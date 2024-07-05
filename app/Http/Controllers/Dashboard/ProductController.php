<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\ProductExport;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\Category;
use App\Models\Ruangan;
use Illuminate\Support\Facades\Process;
use Exel;
use App\Imports\UserImports;
use Barryvdh\DomPDF\Facade\Pdf;
use App\Imports\ProductImport;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $query = DB::table('products')
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->select('products.*', 'categories.name as category');

        if ($request->has('search')) {
            $query->where('products.name', 'LIKE', "%{$request->search}%");
        }

        $products = $query->orderBy('products.created_at')->paginate(10);

        if ($request->get('export') == 'pdf') {
            $pdf = Pdf::loadView('pdf.products', ['products' => $products]);
            return $pdf->stream('data barang.pdf');
        }

        return view('dashboard.products.index', ['products' => $products]);
    }

        // Contoh di dalam controller
    // Di dalam controller untuk index-pimpinan
    public function indexPimpinan(Request $request)
    {
        $products = Product::query()
            ->when($request->has('search'), function ($query) use ($request) {
                $query->where('name', 'like', '%' . $request->search . '%');
            })
            ->with('category') // Eager loading untuk relasi category
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        return view('dashboard.products.indexpimpinan', compact('products'));
    }



    public function massValidate(Request $request)
    {
        $productIds = $request->input('selected_products');

        if ($productIds) {
            Product::whereIn('id', $productIds)->update(['verified' => true]);
            return redirect()->back()->with('message', 'Selected products have been validated.');
        }

        return redirect()->back()->with('message', 'No products selected for validation.');
    }

    public function importPDF()
    {
        // $products = Product::all();
        $pdf = Pdf::loadView('dashboard.products.pdf', ['products'=>Product::all()]);
        return $pdf->stream('product.pdf');
    }

    public function delete ($id) {
        $product = Product::findOrFail($id);
        Storage::delete($product->image);
        $deletedProduct = $product->delete();

        if($deletedProduct){
            session()->flash('message', 'berhasil hapus data');
            return response()->json(['message'=> 'success delete data'],200);
        }
    }

    public function create () {
        $category = Category::all();
        $supplier = Supplier::all();
        $ruangan  = Ruangan::all();
        return view('dashboard.products.input', ['categories'=> $category, 'suppliers'=>$supplier, 'ruangans'=>$ruangan]);
    }

    public function store(Request $request) {
        $validated = $this->validate($request, [
            'kode_barang'  => ['required'],
            'name'         => ['required'],
            'price'        => ['required'],
            'image'        => ['required', 'image', 'max:1024', 'mimes:png,jpg,jpeg'],
            'category_id'  => ['required'],
            'room_id'      => ['required'],
        ]);
    
        $image = $request->file('image');
        $filename = date('Y-m-d').$image->getClientOriginalName();
        $path = 'foto_barang/'.$filename;
    
        Storage::disk('public')->put($path, file_get_contents($image));
    
        $created = Product::create([
            'kode_barang'  => $request->kode_barang,
            'name'         => $request->name,
            'price'        => $request->price,
            'image'        => $filename,
            'category_id'  => $request->category_id,
            'room_id'      => $request->room_id,
        ]);
    
        if ($created) {
            return redirect('/barang')->with('message', 'berhasil menambahkan data');
        }
    }
    
    public function show($id)
    {
        $product = Product::findOrFail($id);
        return view('dashboard.products.show', compact('product'));
    }


    public function edit ($id) {
        $product  = Product::findOrFail($id);
        $category = Category::all();
        $supplier = Supplier::all();
        $ruangan  = Ruangan::all(); 
        return view('dashboard.products.update', [
            "product"=>$product, 
            'categories'=>$category,
            'suppliers'=>$supplier, 
            'ruangans'=>$ruangan
        ]);
    }

    public function update(Request $request, $id) {
        $validated = $this->validate($request, [
            'kode_barang'  => ['required'],
            'name'         => ['required'],
            'price'        => ['required'],
            'category_id'  => ['required'],
            'room_id'      => ['required'],
            'image'        => ['required', 'image', 'max:1024', 'mimes:png,jpg,jpeg'],
        ]);
    
        $productWithId = Product::findOrFail($id);
    
        // Hapus gambar lama jika ada
        Storage::disk('public')->delete('foto_barang/'.$productWithId->image);
    
        $image = $request->file('image');
        $filename = date('Y-m-d').$image->getClientOriginalName();
        $path = 'foto_barang/'.$filename;
    
        Storage::disk('public')->put($path, file_get_contents($image));
    
        $updated = $productWithId->update([
            'kode_barang'  => $request->kode_barang,
            'name'         => $request->name,
            'price'        => $request->price,
            'image'        => $filename,
            'category_id'  => $request->category_id,
            'room_id'      => $request->room_id,
        ]);
    
        if ($updated) {
            return redirect('/barang')->with('message', 'berhasil update data');
        }
    }
    

    public function getAllProducts () {
        $products = Product::all();
        return response()->json(['data' => $products], 200);
    }

    public function exportExcel () {
        return Excel::download(new ProductExport, 'product.xlsx');
    }

    public function getImportExcel () {
        return view('dashboard.products.import');
    }

        public function importProduct(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls', // Validasi untuk jenis file yang diunggah
        ]);

        try {
            Excel::import(new ProductImport(), $request->file('file'));

            return redirect('/barang')->with('message', 'Data Barang berhasil diimpor.');
        } catch (\Exception $e) {
            Log::error('Import Error: ' . $e->getMessage()); // Logging error
            return redirect('/barang')->with('error', 'Terjadi kesalahan saat mengimpor data barang: ' . $e->getMessage());
        }
    }


    public function massDelete(Request $request)
{
    $ids = $request->input('selected_products');
    if (!empty($ids)) {
        // Hapus data yang berhubungan di tabel product_supplies
        DB::table('product_supplies')->whereIn('product_id', $ids)->delete();
        
        // Hapus data di tabel products
        Product::whereIn('id', $ids)->delete();
        return redirect()->back()->with('message', 'Selected products deleted successfully.');
    }
    return redirect()->back()->with('message', 'No products selected.');
}


    public function indexhome (Request $request) {
        if($request->has('search')){
            $products = DB::table('products')
            ->join('categories', 'products.category_id', '=' , 'categories.id')
            ->where('products.name', "LIKE","%{$request->search}%")
            ->select('products.*','categories.name as category')
            ->orderBy('products.created_at')
            ->paginate(10);
        } else {
             $products = DB::table('products')
            ->join('categories', 'products.category_id', '=' , 'categories.id')
            ->select('products.*','categories.name as category')
            ->orderBy('products.created_at')
            ->paginate(10);
        }

        if ($request->get('export') == 'pdf'){
            $pdf = Pdf::loadView('pdf.products', ['products' => $products]);
            return $pdf->stream('data barang.pdf');   
        }

        return view('layouts.barang', ['products'=>$products]);
    }
}

<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\ProductSupplies;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Activitylog\Models\Activity; // Import model Activity
use Barryvdh\DomPDF\Facade\Pdf;

class ProductSuppliesController extends Controller
{
    public function indexIncome() 
    {
        $productsIncome = ProductSupplies::with(['product', 'user', 'supplier'])->where('type', '=','income')->paginate(10);

        return view('dashboard.income.index', ['productsIncome'=>$productsIncome]);
    }

    public function createIncome()
    {
        $products  = Product::all(); // Mengambil semua produk
        $suppliers = Supplier::all(); // Mengambil semua supplier

        return view('dashboard.income.input', compact('products', 'suppliers'));
    }

    public function storeIncome(Request $request) 
    {
        $this->validate($request, [
            'date'          => ['required'],
            'quantity'      =>['required'],
            'product_id'    =>['required'],
            'supplier_id'   =>['required'],
        ]);

       $created = ProductSupplies::create([
            'product_id'    =>$request->product_id,
            'supplier_id'   =>$request->supplier_id,
            'user_id'       =>Auth::user()->id,
            'date'          =>$request->date,
            'quantity'      =>$request->quantity,
            'type'          =>'income'
            
       ]);

       $sumIncomeQuantity  = ProductSupplies::where('type', 'income')->where('product_id', $request->product_id)->sum('quantity');
       $sumOutcomeQuantity = ProductSupplies::where('type', 'outcome')->where('product_id', $request->product_id)->sum('quantity');
       $product            = Product::findOrFail($request->product_id);
       $quantityUpdated    = $product->update([
        'stock'=>($sumIncomeQuantity - $sumOutcomeQuantity)
       ]);

       if($created && $quantityUpdated)
       {
        // Catat aktivitas menggunakan Spatie Activity Log
        activity()
            ->causedBy(Auth::user())
            ->log('Menambahkan barang masuk');

        return redirect('/barang-masuk')->with('message', 'Data berhasil ditambahkan');
       }
    }

    public function editIncome($id) 
    {
        $products       = Product::all(); // Mengambil semua produk
        $suppliers      = Supplier::all(); // Mengambil semua supplier
        $productIncome  = ProductSupplies::findOrFail($id);

        return view('dashboard.income.update', compact('productIncome', 'products', 'suppliers'));
    }

    public function updateIncome(Request $request, $id) 
    {
        $productIncome  = ProductSupplies::findOrFail($id);
        $product        = Product::findOrFail($productIncome->product_id);

        $updated = $productIncome->update([
            'product_id'    =>$request->product_id,
            'supplier_id'   =>$request->supplier_id,
            'user_id'       =>Auth::user()->id,
            'date'          =>$request->date,
            'quantity'      =>$request->quantity,
        ]);

        $sumIncomeQuantity  = ProductSupplies::where('type', 'income')->sum('quantity');
        $sumOutcomeQuantity = ProductSupplies::where('type', 'outcome')->sum('quantity');
        $product->update([
            'stock'=>($sumIncomeQuantity - $sumOutcomeQuantity)
        ]);

        if($updated)
        {
            // Catat aktivitas menggunakan Spatie Activity Log
            activity()
                ->causedBy(Auth::user())
                ->log('Mengubah barang masuk');

            return redirect('/barang-masuk')->with('message', 'Data berhasil diubah');
        }
    }

    public function importPDFbm()
    {
        $productsIncome = ProductSupplies::with('product')->get();
        $products = Product::all();

        $pdf = PDF::loadView('dashboard.income.pdf', [
            'productsIncome' => $productsIncome,
            'products' => $products
        ]);

        return $pdf->stream('laporan-barang-masuk.pdf');
    }

    public function indexOutcome() 
    {
        $productsOutcome = ProductSupplies::with(['product', 'user'])->where('type','outcome')->paginate(10);

        return view('dashboard.outcome.index', ['productsOutcome'=>$productsOutcome]);
    }

    public function createOutcome()
    {
        $products  = Product::all(); // Mengambil semua produk
        $productOutcome = ProductSupplies::all();
        return view('dashboard.outcome.input', compact('products'));
    }

    public function storeOutcome(Request $request) 
    {
        $this->validate($request, [
            'date'          =>['required'],
            'quantity'      =>['required'],
            'product_id'    =>['required'],
            'name'          =>['required'],
            'desc'          =>['required'],
        ]);

       $created = ProductSupplies::create([
            'product_id'    =>$request->product_id,
            'name'          =>$request->name,
            'user_id'       =>Auth::user()->id,
            'date'          =>$request->date,
            'quantity'      =>$request->quantity,
            'type'          =>'outcome',
            'desc'          =>$request->desc
            
       ]);

      $sumIncomeQuantity    = ProductSupplies::where('type', 'income')->where('product_id', $request->product_id)->sum('quantity');
       $sumOutcomeQuantity  = ProductSupplies::where('type', 'outcome')->where('product_id', $request->product_id)->sum('quantity');
       $product             = Product::findOrFail($request->product_id);
       $quantityUpdated     = $product->update([
        'stock'=>($sumIncomeQuantity - $sumOutcomeQuantity)
       ]);

       if($created && $quantityUpdated)
       {
        // Catat aktivitas menggunakan Spatie Activity Log
        activity()
            ->causedBy(Auth::user())
            ->log('Menambahkan barang keluar');

        return redirect('/barang-keluar')->with('message', 'Data berhasil ditambahkan');
       }
    }

    public function editOutCome($id) 
    {
        $products       = Product::all(); // Mengambil semua produk
        $productOutcome = ProductSupplies::findOrFail($id);

        return view('dashboard.outcome.update', compact('productOutcome', 'products'));
    }

    public function updateOutcome(Request $request, $id) 
    {
        $this->validate($request, [
            'product_id' => 'required',
            'name' => 'required|string|max:255',
            'date' => 'required',
            'quantity' => 'required',
            'desc' => 'required'
        ]);

        $productOutcome = ProductSupplies::findOrFail($id);

        // Validasi input di sini jika diperlukan

        $updated = $productOutcome->update([
            'product_id' => $request->product_id,
            'name' => $request->name,
            'user_id' => Auth::user()->id,
            'date' => $request->date,
            'quantity' => $request->quantity,
            'desc' => $request->desc,
            // Tambahkan kolom lainnya sesuai kebutuhan
        ]);

        // Lakukan perhitungan atau pembaruan lainnya jika diperlukan

        if ($updated) {
            // Catat aktivitas menggunakan Spatie Activity Log
            activity()
                ->causedBy(Auth::user())
                ->log('Mengubah barang keluar');

            return redirect('/barang-keluar')->with('message', 'Data berhasil diubah');
        } else {
            // Handle kesalahan jika pembaruan gagal
        }
    }

    public function showProductOutcome($id)
    {
        $productOutcome = ProductSupplies::findOrFail($id);
        return view('dashboard.outcome.show', compact('productOutcome'));
    }

    public function importPDFbk()
    {
        $productsOutcome = ProductSupplies::with('product')->get();
        $products = Product::all();
        $supplier = Supplier::all();

        $pdf = PDF::loadView('dashboard.outcome.pdf', [
            'productsOutcome' => $productsOutcome,
            'products' => $products,
            'supplier' => $supplier
        ]);

        return $pdf->stream('laporan-barang-keluar.pdf');

    }

    public function deleteProductSupply($id) 
    {
        $productSupply      = ProductSupplies::findOrFail($id);
        $product            = Product::findOrFail($productSupply->product_id);

        $deleted            = $productSupply->delete();
        $sumIncomeQuantity  = ProductSupplies::where('type', 'income')->sum('quantity');
        $sumOutcomeQuantity = ProductSupplies::where('type', 'outcome')->sum('quantity');
        $updated            = $product->update([
            'stock'=>($sumIncomeQuantity - $sumOutcomeQuantity)
        ]);

        if($deleted && $updated)
        {
            // Catat aktivitas menggunakan Spatie Activity Log
            activity()
                ->causedBy(Auth::user())
                ->log('Menghapus barang keluar/masuk');

            session()->flash('message', 'Berhasil hapus data');
            return response()->json(['message'=> 'Success delete data'],200);
        }
    }
}

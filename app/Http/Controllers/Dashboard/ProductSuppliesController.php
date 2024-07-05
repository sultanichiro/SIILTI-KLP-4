<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Supplier;
use App\Models\ProductSupplies;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Barryvdh\DomPDF\Facade\Pdf;

class ProductSuppliesController extends Controller
{
    public function indexIncome () 
    {
        $productsIncome = ProductSupplies::with(['product', 'user', 'supplier'])->where('type', '=','income')->paginate(10);

        return view('dashboard.income.index', ['productsIncome'=>$productsIncome]);
    }

    public function indexOutcome () 
    {
        $productsOutcome = ProductSupplies::with(['product', 'user'])->where('type','outcome')->paginate(10);

        return view('dashboard.outcome.index', ['productsOutcome'=>$productsOutcome]);
    }

    public function createIncome()
    {
        $products  = Product::all(); // Mengambil semua produk
        $suppliers = Supplier::all(); // Mengambil semua supplier

        return view('dashboard.income.input', compact('products', 'suppliers'));
    }

    public function createOutcome()
    {
        $products  = Product::all(); // Mengambil semua produk

        return view('dashboard.outcome.input', compact('products'));
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
        return redirect('/barang-masuk')->with('message', 'data berhasil ditambahkan');
       }
    }

    public function storeOutcome(Request $request) 
    {
        $this->validate($request, [
            'date'          => ['required'],
            'quantity'      =>['required'],
            'product_id'    =>['required'],
            'name'          =>['required'],
        ]);

       $created = ProductSupplies::create([
            'product_id'    =>$request->product_id,
            'name'          =>$request->name,
            'user_id'       =>Auth::user()->id,
            'date'          =>$request->date,
            'quantity'      =>$request->quantity,
            'type'          =>'outcome'
            
       ]);

      $sumIncomeQuantity    = ProductSupplies::where('type', 'income')->where('product_id', $request->product_id)->sum('quantity');
       $sumOutcomeQuantity  = ProductSupplies::where('type', 'outcome')->where('product_id', $request->product_id)->sum('quantity');
       $product             = Product::findOrFail($request->product_id);
       $quantityUpdated     = $product->update([
        'stock'=>($sumIncomeQuantity - $sumOutcomeQuantity)
       ]);

       if($created && $quantityUpdated)
       {
        return redirect('/barang-keluar')->with('message', 'data berhasil ditambahkan');
       }
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
            session()->flash('message', 'berhasil hapus data');
            return response()->json(['message'=> 'success delete data'],200);
        }
    }

    public function editIncome ($id) 
    {
        $products       = Product::all(); // Mengambil semua produk
        $suppliers      = Supplier::all(); // Mengambil semua supplier
        $productIncome  = ProductSupplies::findOrFail($id);

        return view('dashboard.income.update', compact('productIncome', 'products', 'suppliers'));
    }

    public function editOutCome ($id) 
    {
        $products       = Product::all(); // Mengambil semua produk
        $productOutcome = ProductSupplies::findOrFail($id);

        return view('dashboard.outcome.update', compact('productOutcome', 'products'));
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
            return redirect('/barang-masuk')->with('message', 'data berhasil diubah');
        }
    }

    public function updateOutcome(Request $request, $id) 
    {
        $productOutcome = ProductSupplies::findOrFail($id);
        $product        = Product::findOrFail($productOutcome->product_id);

        $updated = $productOutcome->update([
            'product_id'    =>$request->product_id,
            'name'          =>$request->name,
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
            return redirect('/barang-keluar')->with('message', 'data berhasil diubah');
        }
    }

    public function showProductOutcome($id)
    {
        $productOutcome = ProductSupplies::findOrFail($id);
        return view('dashboard.outcome.show', compact('productOutcome'));
    }

    public function importPDFbm()
    {
        $productsIncome = ProductSupplies::with('product')->get();
        $products = Product::all();

        $pdf = PDF::loadView('dashboard.income.pdf', [
            'productsIncome' => $productsIncome,
            'products' => $products
        ]);

        return $pdf->download('laporan-barang-masuk.pdf');
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

        return $pdf->download('laporan-barang-keluar.pdf');
    }



}

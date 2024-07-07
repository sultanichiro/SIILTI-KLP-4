<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Returns;
use App\Models\Product;
use App\Models\Transaction;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReturnsController extends Controller
{
    public function indexReturn()
    {
        $loanReturns = Transaction::where('back', true)->paginate(10, ['*'], 'loanReturnsPage');
        $manualReturns = Returns::with('transaction', 'product')->paginate(10, ['*'], 'manualReturnsPage');

        return view('dashboard.return.index', compact('loanReturns', 'manualReturns'));
    }

    public function createReturn()
    {
        $transactions = Transaction::with(['user', 'product'])->get();
        return view('dashboard.return.input', compact('transactions'));
    }

    public function storeReturn(Request $request)
    {
        $validatedData = $request->validate([
            'transaction_id'        => 'required|integer|exists:transactions,id',
            'tanggal_pengembalian'  => 'required|date',
            'quantity_returned'     => 'required|integer|min:1',
        ]);

        $transaction = Transaction::findOrFail($request->transaction_id);
        $product = Product::findOrFail($transaction->product_id);

        $return = Returns::create([
            'transaction_id'        => $request->transaction_id,
            'user_id'               => Auth::user()->id,
            'product_id'            => $transaction->product_id,
            'tanggal_pengembalian'  => $request->tanggal_pengembalian,
            'quantity_returned'     => $request->quantity_returned,
        ]);

        $product->increment('stock', $request->quantity_returned);

        return redirect('/return-barang')->with('message', 'Berhasil Mengembalikan Barang.');
    }

    public function saranLoanUser($id)
    {
        $transaction = Transaction::findOrFail($id);
        return view('dashboard.return.show', compact('transaction'));
    }
}

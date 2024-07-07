<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Transaction;
use App\Models\Product;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Activitylog\Models\Activity;
use Carbon\Carbon;

class TransactionController extends Controller
{
    public function indexLoan()
    {
        $loans = Transaction::paginate(10); // Menggunakan paginate untuk mendapatkan hasil yang dipaginasi
        return view('dashboard.loan.index', compact('loans'));
    }

    public function createLoan()
    {
        return view('dashboard.loan.input',['products'=>Product::all()]);;
    }

    public function storeLoan(Request $request)
    {
        // Validasi input
        $validatedData = $request->validate([
            'product_id'    => 'required|integer|exists:products,id',
            'quantity'      => 'required|integer|min:1',
            'tanggal_pengembalian' => 'required|date|after_or_equal:' . now()->addDay(1)->format('Y-m-d\TH:i'),
        ], [
            'tanggal_pengembalian.after_or_equal' => 'Tanggal pengembalian harus setidaknya 3 hari dari sekarang.',
        ]);

        // Periksa apakah stok cukup
        $product = Product::findOrFail($request->product_id);
        if ($product->stock < $request->quantity) {
            return redirect()->back()->withErrors(['quantity' => 'Not enough stock available.']);
        }

        // Simpan transaksi
        $transaction = new Transaction;
        $transaction->name = Auth::user()->name;
        $transaction->user_id = Auth::user()->id;
        $transaction->product_id = $request->product_id;
        $transaction->quantity = $request->quantity;
        $transaction->tanggal_peminjaman = now();
        $transaction->tanggal_pengembalian = $request->tanggal_pengembalian;
        $transaction->save();  

        // Kurangi stok produk
        $product->decrement('stock', $request->quantity);

        return redirect('/loan-barang')->with('message', 'Data peminjaman berhasil disimpan.');
    }

    public function editLoan($id){
        $products = Product::all();
        $transaction = Transaction::findOrFail($id);
        return view('dashboard.loan.update', compact('transaction', 'products'));
    }
    
    public function updateLoan(Request $request, $id)
    {
        // Validasi input
        $validatedData = $request->validate([
            'product_id'    => 'required|integer|exists:products,id',
            'quantity'      => 'required|integer|min:1',
        ]);
    
        // Temukan transaksi yang akan diperbarui
        $transaction = Transaction::findOrFail($id);
    
        // Temukan produk berdasarkan product_id untuk memeriksa stok
        $product = Product::findOrFail($request->product_id);
    
        // Periksa apakah stok cukup
        if ($product->stock < $request->quantity) {
            return redirect()->back()->withErrors(['quantity' => 'Not enough stock available.']);
        }
    
        // Update data transaksi
        $transaction->product_id = $request->product_id;
        $transaction->quantity = $request->quantity;
        // Anda bisa tambahkan field lain yang perlu diupdate sesuai kebutuhan
    
        // Simpan perubahan transaksi
        $transaction->save();
    
        // Kurangi stok produk (jika ada perubahan pada quantity)
        $product->stock += $transaction->quantity - $request->quantity; // Mengembalikan stok yang dikurangi sebelumnya
        $product->save();
    
        return redirect('/loan-barang')->with('success', 'Data Peminjaman berhasil diperbarui.');
    }

    public function deleteLoan($id)
    {
        $loan = Transaction::findOrFail($id);
        $loan->delete();

        return response()->json(['success' => true]);
    }

    
    public function RiwayatLoan(Request $request)
    {
        $search = $request->input('search');

        // Mengambil data peminjaman berdasarkan user yang sedang login dan melakukan pencarian jika ada
        $loans = Transaction::where('user_id', Auth::id())
            ->when($search, function($query) use ($search) {
                return $query->where('product_name', 'like', "%{$search}%");
            })->paginate(10);

        return view('dashboard.riwayatuser.index', compact('loans'));
    }

    public function createLoanUser()
    {
        return view('dashboard.loan.inputuser',['products'=>Product::all()]);;
    }

    public function storeLoanUser(Request $request)
    {
        // Validasi input
        $validatedData = $request->validate([
            'product_id'    => 'required|integer|exists:products,id',
            'quantity'      => 'required|integer|min:1',
            'tanggal_pengembalian' => 'required|date|after_or_equal:' . now()->addDay(1)->format('Y-m-d\TH:i'),
        ], [
            'tanggal_pengembalian.after_or_equal' => 'Tanggal pengembalian harus setidaknya 1 hari dari sekarang.',
        ]);

        
        // Periksa apakah stok cukup
        $product = Product::findOrFail($request->product_id);
        if ($product->stock < $request->quantity) {
            return redirect('/input-loan-barang-user')->withErrors(['quantity' => 'Not enough stock available.']);
        }

        // Kurangi stok produk
        $product->stock -= $request->quantity;
        $product->save();

        // Simpan transaksi
        $transaction = new Transaction;
        $transaction->name = Auth::user()->name;
        $transaction->user_id = auth()->user()->id;
        $transaction->product_id = $request->product_id;
        $transaction->quantity = $request->quantity;
        $transaction->tanggal_peminjaman = now();
        $transaction->tanggal_pengembalian = $request->tanggal_pengembalian;
        $transaction->save();

        // Kurangi stok produk
        $product->decrement('stock', $request->quantity);

        return redirect('/riwayat-loan-barang')->with('message', 'Data peminjaman berhasil disimpan.');
    }

    public function saranLoanUser($id){
        $loan = Transaction::findOrFail($id);
        return view('dashboard.riwayatuser.desc', compact('loan'));
    }

    public function storesaranLoanUser (Request $request, $id) 
    {
        $validated = $this->validate($request, [
            'desc' => ['required']
        ]);
    
        $loans = Transaction::findOrFail($id);
    
        $updated = $loans->update([
            'desc' => $request->desc,
        ]);

        //  \Log::info('Transaction updated: ', $loans);
    
         if ($updated) {
            return redirect('/riwayat-loan-barang')->with('message', 'Saran atau komentar berhasil disimpan.');
        } else {
            return redirect('/riwayat-loan-barang')->with('error', 'Gagal menyimpan saran atau komentar.');
        }
    }

    public function returnItem($id)
    {
        $loan = Transaction::findOrFail($id);
        $loan->back = true;
        $loan->save();

        return redirect()->back()->with('message', 'Barang berhasil dikembalikan');
    }

}

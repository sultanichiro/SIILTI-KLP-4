<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BugReport;
use Illuminate\Support\Facades\Auth;

class BugReportController extends Controller
{
    public function index()
    {
        $bugReports = BugReport::latest()->paginate(10); // Mengambil laporan bug terbaru dengan paginasi
        return view('dashboard.reportbug.index', compact('bugReports'));
    }

    // Di dalam controller atau di mana Anda memproses laporan bug
    public function storeBugReport(Request $request)
    {
        $user_id = auth()->user()->id; // Mendapatkan ID pengguna yang sedang login
        $description = $request->input('description');

        $bugReport = new BugReport();
        $bugReport->user_id = Auth::user()->id;
        $bugReport->name = Auth::user()->name;
        $bugReport->description = $description;
        $bugReport->save();

        // Catat aktivitas menggunakan Spatie Activity Log
        activity()
            ->causedBy($user_id)
            ->log('Mengirim laporan bug'); // Deskripsi aktivitas

        // Optional: Tambahkan pesan sukses atau lakukan tindakan lain setelah penyimpanan
        return redirect()->back()->with('success', 'Laporan bug telah berhasil dikirim!');
    }
}


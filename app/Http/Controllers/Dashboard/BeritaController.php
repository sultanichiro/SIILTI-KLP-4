<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class BeritaController extends Controller
{
    public function Berita(Request $request)
    {
        // Log request data
        clock()->info('Request data:', $request->all());

        // Mulai event timeline untuk pelacakan waktu eksekusi
        clock()->event('Loading berita index')->begin();

        // Contoh data yang akan dikirim ke view (sesuaikan dengan kebutuhan Anda)
        $data = [
            'example_key' => 'example_value',
            // Tambahkan data lain yang diperlukan untuk view di sini
        ];

        // Akhiri event timeline
        clock()->event('Loading berita index')->end();

        // Log data yang akan dikirim ke view
        clock()->info('Data for view:', $data);

        // Kembalikan view dengan data
        return view('dashboard.berita.index', $data);
    }
}

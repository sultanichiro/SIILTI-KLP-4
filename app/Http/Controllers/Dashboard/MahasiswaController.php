<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Mahasiswa;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\MahasiswaExport;
use App\Imports\MahasiswaImport;

class MahasiswaController extends Controller
{
    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=mahasiswa&file=index';
        // dd($url);
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            foreach ($data['list'] as $mahasiswaData) {
                // Menyimpan atau memperbarui data ke database
                Mahasiswa::updateOrCreate(
                    ['nim' => $mahasiswaData['nim']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'name' => $mahasiswaData['nama'],
                        'gender' => $mahasiswaData['gender'],
                        'kode_jurusan' => $mahasiswaData['kode_jurusan'],
                        'jurusan' => $mahasiswaData['jurusan'],
                        'kode_prodi' => $mahasiswaData['kode_prodi'],
                        'prodi' => $mahasiswaData['prodi'],
                    ]
                );
            }

            return redirect()->route('dosen')->with('success', 'Data berhasil diperbarui');
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }

    public function indexMahasiswa(Request $request)
    {
        $search = $request->input('search');
        $query = Mahasiswa::query();

        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('nim', 'like', "%{$search}%")
                  ->orWhere('prodi', 'like', "%{$search}%")
                  ->orWhere('angkatan', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%");
            });
        }

        $mahasiswas = $query->paginate(10);

        return view('dashboard.mahasiswa.index', compact('mahasiswas'));
    }

    public function createMahasiswa()
    {
        return view('dashboard.mahasiswa.input');
    }

    public function storeMahasiswa(Request $request)
    {
        $validatedData = $request->validate([
            'nim' => 'required|unique:mahasiswas,nim',
            'name' => 'required|string|max:255',
            'jurusan' => 'required|string|max:255',
            'prodi' => 'required|string|max:255',
            'angkatan' => 'required|integer|min:1900|max:' . date('Y'),
            'email' => 'required|email|unique:mahasiswas,email',
            'no_telp' => 'required',
            'alamat' => 'required|string|max:255'
        ]);

        Mahasiswa::create($validatedData);

        return redirect()->route('mahasiswa')->with('success', 'Mahasiswa berhasil ditambahkan.');
    }

    public function editMahasiswa($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        return view('dashboard.mahasiswa.update', compact('mahasiswa'));
    }

    public function updateMahasiswa(Request $request, Mahasiswa $mahasiswa)
    {
        $validatedData = $request->validate([
            'nim' => 'required|unique:mahasiswas,nim,' . $mahasiswa->id,
            'name' => 'required|string|max:255',
            'jurusan' => 'required|string|max:255',
            'angkatan' => 'required|integer|min:1900|max:' . date('Y'),
            'email' => 'required|email|unique:mahasiswas,email,' . $mahasiswa->id,
            'no_telp' => 'required',
            'alamat' => 'required|string|max:255'
        ]);

        $mahasiswa->updateMahasiswa($validatedData);

        return redirect()->route('mahasiswa')->with('success', 'Data Mahasiswa berhasil diperbarui.');
    }

    public function showMahasiswa($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        return view('dashboard.mahasiswa.show', compact('mahasiswa'));
    }

    public function deleteMahasiswa($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        $mahasiswa->delete();
        return redirect()->route('mahasiswa')->with('success', 'Data Mahasiswa berhasil dihapus.');
    }

    public function exportExcel () {
        return Excel::download(new MahasiswaExport, 'mahasiswa.xlsx');
    }

    public function inputImportMahasiswa(){
        return view('dashboard.mahasiswa.import');
    }

    public function importMahasiswa(Request $request)
    {
        $request->validate([
            'file' => 'required|max:2048', // Validasi untuk jenis file yang diunggah
        ]);

        try {
            Excel::import(new MahasiswaImport(), $request->file('file'));

            return redirect('/mahasiswa')->with('success', 'Data mahasiswa berhasil diimpor.');
        } catch (\Exception $e) {
            return redirect('/mahasiswa')->with('error', 'Terjadi kesalahan saat mengimpor data mahasiswa: ' . $e->getMessage());
        }
    }
}

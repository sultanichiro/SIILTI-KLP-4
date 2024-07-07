<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Mahasiswa;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Validation\Rule;
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

            return redirect()->route('mahasiswa')->with('success', 'Data berhasil diperbarui');
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

    public function updateMahasiswa(Request $request, $id) {
        $this->validate($request, [
            'nim' => 'required|integer|min:1',
            'name' => 'required',
            'jurusan' => 'required',
            'prodi' => 'required',
            'angkatan' => 'required|integer|min:1900|max:'.date('Y'),
            'email' => 'required|email',
            'no_telp' => 'required',
            'alamat' => 'required',
        ]);
    
        $mahasiswa = Mahasiswa::findOrFail($id);
    
        $updated = $mahasiswa->update([
            'nim' => $request->nim,
            'name' => $request->name,
            'jurusan' => $request->jurusan,
            'prodi' => $request->prodi,
            'angkatan' => $request->angkatan,
            'email' => $request->email,
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat,
        ]);
    
        if ($updated) {
            return redirect('/mahasiswa')->with('message', 'Data mahasiswa berhasil diupdate');
        } else {
            return back()->withErrors(['message' => 'Gagal mengupdate data mahasiswa']);
        }
    }
    

    public function showMahasiswa($id)
    {
        $mahasiswa = Mahasiswa::findOrFail($id);
        return view('dashboard.mahasiswa.show', compact('mahasiswa'));
    }

    public function deleteMahasiswa($id)
{
    try {
        $mahasiswa = Mahasiswa::findOrFail($id);
        $mahasiswa->delete();
        return redirect()->route('mahasiswa')->with('success', 'Data Mahasiswa berhasil dihapus.');
    } catch (\Exception $e) {
        // Menangani pengecualian jika ada kesalahan selama penghapusan
        return redirect()->route('mahasiswa')->with('error', 'Terjadi kesalahan saat menghapus data mahasiswa.');
    }
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

    public function massDelete(){
        try {
            // Lakukan penghapusan semua data di tabel mahasiswa
            Mahasiswa::truncate();
            // Jika berhasil, kembalikan respons atau pesan sukses
            return redirect('/mahasiswa')->with('message', 'Semua data mahasiswa berhasil dihapus');
        } catch (\Exception $e) {
            // Tangani jika terjadi error
            return redirect('/mahasiswa ')->with('error', 'Gagal menghapus data mahasiswa: ');
        }
    }
}

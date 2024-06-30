<?php

namespace App\Http\Controllers\Dashboard;

use App\Models\Dosen;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;


class DosenController extends Controller
{
    public function fetchAndSaveData()
    {
        // URL atau path ke data JSON Anda
        $url = 'https://umkm-pnp.com/heni/index.php?folder=dosen&file=index';
        // dd($url);
        // Mengambil data JSON
        $response = Http::get($url);
        $data = $response->json();

        // Memeriksa apakah pengambilan data sukses
        if ($data['success'] == 1) {
            foreach ($data['list'] as $dosenData) {
                // Menyimpan atau memperbarui data ke database
                Dosen::updateOrCreate(
                    ['nip' => $dosenData['nip']], // Kondisi untuk mencari data yang sudah ada
                    [
                        'name' => $dosenData['nama'],
                        'nidn' => $dosenData['nidn'],
                        'gender' => $dosenData['gender'],
                        'kode_jurusan' => $dosenData['kode_jurusan'],
                        'jurusan' => $dosenData['jurusan'],
                        'kode_prodi' => $dosenData['kode_prodi'],
                        'prodi' => $dosenData['prodi'],
                        'email' => $dosenData['email']
                    ]
                );
            }

            return redirect()->route('dosen')->with('success', 'Data berhasil diperbarui');
        } else {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }
    }

    public function indexDosen(Request $request)
    {
        $search = $request->input('search');
        $query = Dosen::query();

        if ($search) {
            $query->where(function ($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('nip', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%");
            });
        }

        $dosens = $query->paginate(10);

        return view('dashboard.dosen.index', compact('dosens'));
    }

    public function createDosen()
    {
        return view('dashboard.dosen.input');
    }

    public function storeDosen(Request $request)
    {
        $validatedData = $request->validate([
            'nip' => 'required|unique:dosens,nip',
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:dosens,email',
            'no_telp' => 'required',
            'alamat' => 'required|string|max:255'
        ]);

        Dosen::create($validatedData);

        return redirect()->route('dosen')->with('success', 'Dosen berhasil ditambahkan.');
    }



    public function editDosen($id)
    {
        $dosen = Dosen::findOrFail($id);
        return view('dashboard.dosen.update', compact('dosen'));
    }

    public function updateDosen(Request $request, Dosen $dosen)
    {
        $validatedData = $request->validate([
            'nip' => 'required|unique:dosens,nip,' . $dosen->id,
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:Dosens,email,' . $dosen->id,
            'no_telp' => 'required',
            'alamat' => 'required|string|max:255'
        ]);

        $dosen->updateDosen($validatedData);

        return redirect()->route('dosen')->with('success', 'Data Dosen berhasil diperbarui.');
    }

    public function showDosen($id)
    {
        $dosen = Dosen::findOrFail($id);
        return view('dashboard.dosen.show', compact('dosen'));
        // return($dosen);
    }

    public function deleteDosen($id)
    {
        $dosen = Dosen::findOrFail($id);
        $dosen->delete();

        return redirect()->route('dosen')->with('message', 'Data dosen berhasil dihapus.');
    }
}

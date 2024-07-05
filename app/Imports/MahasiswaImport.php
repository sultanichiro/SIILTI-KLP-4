<?php

namespace App\Imports;

use App\Models\Mahasiswa;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class MahasiswaImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        
        return new Mahasiswa([
            'nim' => $row['nim'],
            'name' => $row['name'],
            'jurusan' => $row['jurusan'] ?? null,
            'prodi' => $row['prodi'],
            'angkatan' => $row['angkatan'],
            'email' => $row['email'] ?? null, // Nilai default jika tidak ada
            'kode_jurusan' => $row['kode_jurusan'] ?? null,
            'kode_prodi' => $row['kode_prodi'] ?? null,
            'no_telp' => $row['no_telp'] ?? null,
            'alamat' => $row['alamat'] ?? null,
            // Tambahkan field lain yang diperlukan dari file Excel
        ]);

    }
}

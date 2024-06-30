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
            'nim' => $row['NIM'],
            'name' => $row['Nama'],
            'jurusan' => $row['Jurusan'],
            'prodi' => $row['Program_Studi'],
            'angkatan' => $row['Angkatan'],
            // 'email' => $row['Email'],
            // Tambahkan field lain yang diperlukan dari file Excel
        ]);

    }
}

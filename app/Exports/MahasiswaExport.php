<?php

namespace App\Exports;

use App\Models\Mahasiswa;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class MahasiswaExport implements FromQuery, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Database\Query\Builder
    */
    public function query()
    {
        return Mahasiswa::query()
            ->select(
                'id', 
                'nim', 
                'name', 
                'jurusan', 
                'prodi', 
                'angkatan', 
                'email', 
                'no_telp', 
                'alamat'
            );
    }

    /**
    * @return array
    */
    public function headings(): array
    {
        return [
            'No',
            'NIM',
            'Nama',
            'Jurusan',
            'Program Studi',
            'Angkatan',
            'Email',
            'No Telfon',
            'Alamat'
        ];
    }

    /**
    * @var Mahasiswa $mahasiswa
    */
    public function map($mahasiswas): array
    {
        return [
            $mahasiswas->id,
            $mahasiswas->nim,
            $mahasiswas->name,
            $mahasiswas->jurusan,
            $mahasiswas->prodi,
            $mahasiswas->angkatan,
            $mahasiswas->email,
            $mahasiswas->no_telp,
            $mahasiswas->alamat
        ];
    }
}

<?php

namespace App\Exports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class UserExport implements FromQuery, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Database\Query\Builder
    */
    public function query()
    {
        // Mengambil data pengguna dengan peran yang terkait
        return User::query()->with('roles');
    }

    /**
    * @return array
    */
    public function headings(): array
    {
        return [
            'No',
            'Nama',
            'Email',
            'Peran'
        ];
    }

    /**
    * @var User $user
    */
    public function map($user): array
    {
        // Menyembunyikan detail spesifik tentang peran
        $roleNames = $user->roles->pluck('name')->implode(', ');

        return [
            $user->id,
            $user->name,
            $user->email,
            $roleNames,
        ];
    }
}

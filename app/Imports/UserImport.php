<?php

namespace App\Imports;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Spatie\Permission\Models\Role;

class UserImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        $user = User::updateOrCreate(
            ['email' => $row['Email']], // Kriteria untuk mencari atau membuat pengguna baru
            [
                'name' => $row['Nama'],
                'password' => Hash::make('12345678'),
                // Tambahkan field lain yang diperlukan dari file Excel
            ]
        );

        // Menetapkan peran (role) untuk pengguna
        if (!empty($row['Peran'])) {
            $role = Role::where('name', $row['Peran'])->first();
            if ($role) {
                $user->assignRole($role);
            }
        }

        return $user;
    }
}

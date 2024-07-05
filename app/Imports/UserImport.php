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
            ['email' => $row['email']], // Kriteria untuk mencari atau membuat pengguna baru
            [
                'name' => $row['name'],
                'password' => Hash::make('12345678'), // Password default, bisa disesuaikan dengan kebutuhan
                // Tambahkan field lain yang diperlukan dari file Excel
            ]
        );

         // Menetapkan peran (role) untuk pengguna
         if (!empty($row['role'])) {
            $roleName = strtolower($row['role']); // Mengonversi ke lowercase untuk memastikan kesesuaian case sensitive
            $role = Role::where('name', $roleName)->first();
            if ($role) {
                $user->syncRoles([$role->name]); // Menggunakan syncRoles untuk memastikan hanya role yang diinginkan yang diberikan kepada pengguna
            }
        }

        return $user;
    }
}

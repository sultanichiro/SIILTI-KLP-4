<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    public function run(): void
    {
        // List of permissions
        $permissions = [
            'view_dashboard',
            'view_barang',
            'view_barang_masuk',
            'view_barang_keluar',
            'view_kategori_barang',
            'view_ruangan',
            'view_kategori_berita',
            'view_supplier',
            'view_peminjaman',
            'view_pengembalian',
            'view_pimpinan',
            'view_dosen/staff',
            'view_mahasiswa',
            'view_admin',
            'view_user',
            'view_input_peminjaman',
            'view_riwayat_peminjaman',
            'view_validasi_barang',
            'view_labor',
            'view_report',
            'view_log_activity'
        ];

        // Create or update permissions
        foreach ($permissions as $permission) {
            Permission::updateOrCreate(['name' => $permission]);
        }

        // Define roles and their permissions
        $rolesPermissions = [
            'admin' => [
                'view_dashboard',
                'view_barang',
                'view_barang_masuk',
                'view_barang_keluar',
                'view_kategori_barang',
                'view_ruangan',
                'view_kategori_berita',
                'view_supplier',
                'view_peminjaman',
                'view_pengembalian',    
                'view_pimpinan',
                'view_dosen/staff',
                'view_mahasiswa',
                'view_admin',
                'view_user',
                'view_labor',
                'view_report',
                'view_log_activity'
            ],
            'pimpinan' => [
                'view_dashboard',
                'view_barang',
                'view_barang_masuk',
                'view_barang_keluar',
            ],
            'dosen_staff' => [
                'view_barang',
                'view_input_peminjaman',
                'view_riwayat_peminjaman'
            ],
            'mahasiswa' => [
                'view_barang',
                'view_input_peminjaman',
                'view_riwayat_peminjaman'
            ],
        ];

        // Create or update roles and assign permissions
        foreach ($rolesPermissions as $role => $permissions) {
            $roleModel = Role::updateOrCreate(['name' => $role]);
            $roleModel->syncPermissions($permissions);
        }

        // Assign roles to users (make sure users exist)
        $usersRoles = [
            1 => 'admin',
            2 => 'dosen_staff',
            3 => 'mahasiswa',
            4 => 'pimpinan',
        ];

        foreach ($usersRoles as $userId => $role) {
            $user = User::find($userId);
            if ($user) {
                $user->assignRole($role);
            }
        }
    }
}

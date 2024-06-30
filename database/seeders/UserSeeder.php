<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name' => "Sultan Maulana Ichiro",
            'email' => "sultanmaulanaichiro@gmail.com",
            'password'=>Hash::make('12345678')
        ]);

        DB::table('users')->insert([
            'name' => "Indah Wulandari",
            'email' => "indah@gmail.com",
            'password'=>Hash::make('indah123')
        ]);
        DB::table('users')->insert([
            'name' => "Erfan Fadhil Juzar",
            'email' => "erpan@gmail.com",
            'password'=>Hash::make('erpan123')
        ]);
        DB::table('users')->insert([
            'name' => "Eka Maulidya Rahmi",
            'email' => "eka@gmail.com",
            'password'=>Hash::make('eka12345')
        ]);

        // $admin = User::create([
        //     'name' => "admin@gmail.com"
        // ]);
    }
}

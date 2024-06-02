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
            'email' => "ichiro@gmail.com",
            'password'=>Hash::make('ganteng'),
            'role'=>'admin'
        ]);

        DB::table('users')->insert([
            'name' => "Indah Wulandari",
            'email' => "indah@gmail.com",
            'password'=>Hash::make('cantik'),
            'role'=>'mahasiswa'
        ]);
        DB::table('users')->insert([
            'name' => "Erfan Fadhil Juzar",
            'email' => "erpan@gmail.com",
            'password'=>Hash::make('ganteng'),
            'role'=>'mahasiswa'
        ]);
        DB::table('users')->insert([
            'name' => "Eka Maulidya Rahmi",
            'email' => "eka@gmail.com",
            'password'=>Hash::make('cantik'),
            'role'=>'mahasiswa'
        ]);
    }
}

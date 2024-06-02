<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('suppliers')->insert([
            'name' => "PT Erfan Ganteng",
            'address' => "Lubuk Buaya",
            'phone'=>'08123456789',
            'email'=>'tergantung@gmailcom'
        ]);

        DB::table('suppliers')->insert([
            'name' => "PT SIILTI GACOR",
            'address' => "Padang",
            'phone'=>'082389000458',
            'email'=>'siilti@gmailcom'
        ]);

        DB::table('suppliers')->insert([
            'name' => "PT TEERPEEL PEENPE",
            'address' => "Pelalawan",
            'phone'=>'082389000458',
            'email'=>'trpl@gmailcom'
        ]);
    }
}

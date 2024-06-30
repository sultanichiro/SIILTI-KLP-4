<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        DB::table('products')->insert([
            'kodebarang' => "LTP-38-2",
            'name' => "Laptop",
            'category_id'=> 1,
            'room_id' => 3,
            'price'=> 8000000,
            'stock'=> 20
        ]);
        DB::table('products')->insert([
            'kodebarang' => "KPT-3-10",
            'name' => "Komputer",
            'category_id'=> 1,
            'room_id' => 1,
            'price'=> 5000000,
            'stock'=> 250
        ]);
        DB::table('products')->insert([
            'kodebarang' => "ACP-11-65",
            'name' => "Acces Point",
            'category_id'=> 1,
            'room_id' => 3,
            'price'=> 300000,
            'stock'=> 100
        ]);
        DB::table('products')->insert([
            'kodebarang' => "VGA-13-25",
            'name' => "VGA",
            'category_id'=> 1,
            'room_id' => 1,
            'price'=> 25000000,
            'stock'=> 3
        ]);
        DB::table('products')->insert([
            'kodebarang' => "MCF-05-01",
            'name' => "Microsoft",
            'category_id'=> 2,
            'price'=> 10000,
            'room_id' => 2,
            'stock'=> 250
        ]);
    }
}

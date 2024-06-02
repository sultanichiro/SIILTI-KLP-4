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
            'name' => "Laptop",
            'category_id'=> 1,
            'price'=> 8000000,
            'stock'=> 20
        ]);
        DB::table('products')->insert([
            'name' => "Komputer",
            'category_id'=> 1,
            'price'=> 5000000,
            'stock'=> 250
        ]);
        DB::table('products')->insert([
            'name' => "Acces Point",
            'category_id'=> 1,
            'price'=> 300000,
            'stock'=> 100
        ]);
        DB::table('products')->insert([
            'name' => "VGA",
            'category_id'=> 1,
            'price'=> 25000000,
            'stock'=> 3
        ]);
        DB::table('products')->insert([
            'name' => "Microsoft",
            'category_id'=> 2,
            'price'=> 10000,
            'stock'=> 250
        ]);
    }
}

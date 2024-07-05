<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use App\Models\Product;
use Illuminate\Support\Facades\Log;

class ProductImport implements ToCollection
{
    public function collection(Collection $rows)
    {
        foreach ($rows as $row) 
        {
            Log::info('Row Data:', $row->toArray()); // Logging data yang diimpor

            Product::create([
                'category_id' => $row[3], // Pastikan index sesuai dengan urutan di file Excel
                'kode_barang' => $row[0],
                'name' => $row[1],
                'room_id' => $row[4],
                'price' => $row[3],
                'stock' => isset($row['stock']) ? $row['stock'] : 0, // Nilai default jika tidak ada
                'image' => isset($row['image']) ? $row['image'] : null, // Nilai default jika tidak ada
                'desc' => isset($row['desc']) ? $row['desc'] : null, // Nilai default jika tidak ada
                'verified' => isset($row['verified']) ? $row['verified'] : false, // Nilai default jika tidak ada
            ]);
        }
    }
}


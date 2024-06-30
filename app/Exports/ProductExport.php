<?php

namespace App\Exports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class ProductExport implements FromQuery, WithHeadings, WithMapping
{
    /**
    * @return \Illuminate\Database\Query\Builder
    */
    public function query()
    {
        return Product::query()
            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->join('ruangans', 'products.room_id', '=', 'ruangans.id')
            ->select('products.id', 'products.kode_barang', 'products.name', 'products.stock', 'categories.name as category', 'ruangans.name as room');
    }

    /**
    * @return array
    */
    public function headings(): array
    {
        return [
            'No',
            'Kode Barang',
            'Nama Barang',
            'Jumlah Barang',
            'Kategori',
            'Ruangan'
        ];
    }

    /**
    * @var Product $product
    */
    public function map($product): array
    {
        return [
            $product->id,
            $product->kode_barang,
            $product->name,
            $product->stock,
            $product->category,
            $product->room,
        ];
    }
}

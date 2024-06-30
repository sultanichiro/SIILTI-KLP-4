<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie-edge">
        <title>Laporan</title>
    </head>
    <body>
        <h4 style="text-align: center;">Laporan Barang</h4>
        <table class="w-full mt-5 text-sm text-gray-600" width='100%' border="2">
            <thead>
                <tr class="font-bold border-b-2 p-2">
                    <td class="p-2">No</td>
                    <td class="p-2">Kode Barang</td>
                    <td class="p-2">Nama Barang</td>
                    <td class="p-2">Jumlah Barang</td>
                    <td class="p-2">Kategori Barang</td>
                </tr>
            </thead>
            <tbody>
                @php
                    $noProduct = 1;
                @endphp
                @foreach ($products as $product)
                    <tr class="border-b p-2">
                        <td class="p-2">{{$noProduct}}</td>
                        <td class="p-2">{{$product->kode_barang}}</td>
                        <td class="p-2">{{$product->name}}</td>
                        <td class="p-2">{{$product->stock}}</td>
                        <td class="p-2">{{$product->category->name}}</td>
                        
                    </tr>
                    @php
                        $noProduct++;
                    @endphp
                @endforeach
            </tbody>
        </table>
    </body>
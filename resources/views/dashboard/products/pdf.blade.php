    <!DOCTYPE html>
    <html lang="id">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Laporan Barang</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class="font-serif mx-10 my-10">
        <div class="max-w-3xl mx-auto">
            <div class="flex justify-between items-center mb-4">
                <div class="text-center flex-1 mr-4">
                    <h4 class="text-sm font-bold">KEMENTRIAN PENDIDIKAN DAN KEBUDAYAAN</h4>
                    <h4 class="text-sm font-bold">POLITEKNIK NEGERI PADANG</h4>
                    <h4 class="text-sm font-bold">PUSAN PENINGKATAN DAN PENGEMBANGAN AKTIVITAS</h4>
                    <h4 class="text-sm font-bold">(P3AI)</h4>
                </div>
            </div>
            <hr class="border-black mb-4">

            <div class="text-center">
                <h4 class="text-lg font-bold uppercase">Laporan Barang</h4>
                <p class="mt-2">Tanggal: {{ date('d F Y') }}</p>
            </div>

            <table class="w-full mt-5 text-sm text-gray-600 border-collapse border border-gray-800" width="100%" border="1">
                <thead>
                    <tr class="font-bold bg-gray-200">
                        <th class="p-2 border border-gray-800">No</th>
                        <th class="p-2 border border-gray-800">Kode Barang</th>
                        <th class="p-2 border border-gray-800">Nama Barang</th>
                        <th class="p-2 border border-gray-800">Jumlah Barang</th>
                        <th class="p-2 border border-gray-800">Kategori Barang</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $noProduct = 1;
                    @endphp
                    @foreach ($products as $product)
                        <tr>
                            <td class="p-2 border border-gray-800 text-center">{{ $noProduct }}</td>
                            <td class="p-2 border border-gray-800">{{ $product->kode_barang }}</td>
                            <td class="p-2 border border-gray-800">{{ $product->name }}</td>
                            <td class="p-2 border border-gray-800 text-center">{{ $product->stock }}</td>
                            <td class="p-2 border border-gray-800">{{ $product->category->name }}</td>
                        </tr>
                        @php
                            $noProduct++;
                        @endphp
                    @endforeach
                </tbody>
            </table>

            <div class="mt-10">
                <div class="flex justify-between">
                    <div class="text-center">
                        <p>Disetujui oleh:</p>
                        <br><br><br>
                        <p>FITRI NOVA, M.T, S.ST</p>
                        <p>Kepala Labor</p>
                    </div>
                    <div class="text-center">
                        <p>Mengetahui,</p>
                        <br><br><br>
                        <p>MERI AZMI, S.T, M.Cs</p>
                        <p>Kaprodi</p>
                    </div>
                </div>
                <div class="flex justify-center mt-10">
                    <div class="text-center">
                        <p>Mengetahui,</p>
                        <br><br><br>
                        <p>RONAL HADI, S.T, M.Kom</p>
                        <p>Kajur</p>
                    </div>
                </div>
            </div>
        </div>
    </body>

    </html>

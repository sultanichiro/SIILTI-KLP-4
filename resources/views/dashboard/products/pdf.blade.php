<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Data Barang</title>
    <style>
        body {
            font-family: 'Times New Roman', Times, serif;
            margin: 40px;
        }

        .content {
            margin: 0 auto;
            max-width: 800px;
        }

        .header,
        .footer {
            text-align: center;
            margin-bottom: 10px;
        }

        .header h4 {
            margin-bottom: 0;
            margin-top: 0;
        }

        .header p {
            margin-top: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
            overflow-x: auto;
            /* Membuat tabel dapat di-scroll horizontal jika perlu */
        }

        th,
        td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        td h4 {
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            text-align: center;
        }

        /* .signature {
            margin-top: 40px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .signature .mengetahui {
            margin-top: 40px;
            text-align: center;
            flex-basis: 100%;
        }

        .signature .mengetahui p {
            white-space: nowrap;
        }

        .signature div {
            text-align: center;
        } */
        .signature {
            margin-top: 40px;
        }

        .signature div {
            display: inline-block;
            width: 30%;
            text-align: center;
            white-space: nowrap;
            /* overflow: hidden; */
            text-overflow: ellipsis;


        }

        .logo {
            float: left;
            width: 90px;
            /* Adjust the width as needed */
            height: auto;
        }
    </style>
</head>

<body>
    <div class="content">
        <div class="header">
            <table>
                <tr>
                    <td>
                        <img src="https://tse3.mm.bing.net/th?id=OIP.gys9HQ3QdfNcnJPEz6O85wHaHa&pid=Api&P=0&h=220"
                            alt="Logo" class="logo">
                        <h4 style="margin-right :80px; margin-top: 10px">
                            KEMENTRIAN PENDIDIKAN DAN PENYIMPANAN <br>
                            POLITEKNIK NEGERI PADANG <br>
                            PUSAT PENGELOLAAN INVENTARIS <br>
                            INVENTARIS BARANG (SIILTI)
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 style="margin-top: -5px; margin-bottom: -5px;">
                            LAMPIRAN
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4 style="text-transform: uppercase;">LAPORAN INVENTARIS DATA BARANG<br>
                            JURUSAN : TEKNOLOGI INFORMASI <br> PROGRAM STUDI : TEKNOLOGI REKAYASA PERANGKAT LUNAK</h4>
                    </td>
                </tr>
            </table>
        </div>
        <p>Telah dilaksanakan sidang PBL Sistem Informasi Inventaris Labor Teknologi Informasi</p>
        <p>Hari / Tanggal : Selasa / 09 Juli 2024</p>
        <p>Tempat : Ruang TUK / E305</p>
        <p>dengan hasil sebagai berikut:</p>

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

        <div class="card">
            <div class="signature">
                <div style="float:left">
                    <p>Menyetujui,</p>
                    <p style="font-style: italic;">Kepala Labor</p>
                    <br><br><br>
                    <p>FITRI NOVA, M.T, S.ST</p>
                </div>
                <div style="float:right;">
                    <p>Mengetahui</p>
                    <p style="font-style: italic;">Ketua Prodi</p>
                    <br><br><br>
                    <p>	MERI AZMI, S.T, M.Cs</p>
                </div>
                <div style="margin-top: 200px;">
                    <p>Mengetahui,</p>
                    <p style="font-style: italic;">Ketua Jurusan</p>
                    <br><br><br>
                    <p>	RONAL HADI, S.T, M.Kom</p>
                </div>
            </div>
        </div>

</body>

</html>
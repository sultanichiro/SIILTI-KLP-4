<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Barang Keluar</title>
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
                        <h4 style="text-transform: uppercase;">LAPORAN INVENTARIS BARANG MASUK<br>
                            JURUSAN : TEKNOLOGI INFORMASI <br> PROGRAM STUDI : TEKNOLOGI REKAYASA PERANGKAT LUNAK</h4>
                    </td>
                </tr>
            </table>
        </div>
        <p>Telah dilaksanakan sidang PBL Sistem Informasi Inventaris Labor Teknologi Informasi</p>
        <p>Hari / Tanggal : Selasa / 09 Juli 2024</p>
        <p>Tempat : Ruang TUK / E305</p>
        <p>dengan hasil sebagai berikut:</p>

        <table border="1" style="width: 100%; border-collapse: collapse;">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Barang</th>
                    <th>Nama Mahasiswa</th>
                    <th>Jumlah Barang Keluar</th>
                    <th>Tanggal Keluar</th>
                    <th>Keterangan</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($productsOutcome as $productOutcome)
                    @if ($productOutcome->type === 'outcome')
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>({{$productOutcome->product->kode_barang}}){{$productOutcome->product->name}}</td>
                            <td>{{ $productOutcome->name }}</td>
                            <td>{{ $productOutcome->quantity }}</td>
                            <td>{{ $productOutcome->date }}</td>
                            <td>{{ $productOutcome->desc }}</td>
                        </tr>
                    @endif
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



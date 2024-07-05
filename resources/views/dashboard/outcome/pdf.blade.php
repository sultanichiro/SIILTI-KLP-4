<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan</title>
</head>
<body>
    <h4 style="text-align: center;">Laporan Barang Keluar</h4>
    <table border="1" style="width: 100%; border-collapse: collapse;">
        <thead>
            <tr>
                <th>No</th>
                <th>Barang</th>
                <th>Nama Mahasiswa</th>
                <th>Jumlah Barang</th>
                <th>Jumlah Keluar</th>
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
                        <td>{{ $productOutcome->product->stock - $productOutcome->quantity }}</td>
                        <td>{{ $productOutcome->date }}</td>
                        <td>{{ $productOutcome->desc }}</td>
                    </tr>
                @endif
            @endforeach
        </tbody>
    </table>
</body>
</html>

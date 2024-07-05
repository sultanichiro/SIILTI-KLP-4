<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan</title>
</head>
<body>
    <h4 style="text-align: center;">Laporan Barang Masuk</h4>
    <table border="1" style="width: 100%; border-collapse: collapse;">
        <thead>
            <tr>
                <th>No</th>
                <th>Barang</th>
                <th>Supplier</th>
                <th>Jumlah Masuk</th>
                <th>Jumlah Barang</th>
                <th>Tanggal Masuk</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($productsIncome as $productIncome)
                @if ($productIncome->type === 'income')
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>({{$productIncome->product->kode_barang}}){{$productIncome->product->name}}</td>
                        <td>{{$productIncome->supplier->name}}</td>
                        <td>{{ $productIncome->quantity }}</td>
                        <td>{{ $productIncome->product->stock +  $productIncome->quantity }}</td>
                        <td>{{ $productIncome->date }}</td>
                    </tr>
                @endif
            @endforeach
        </tbody>
    </table>
</body>
</html>

@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="p-5 mt-5 rounded-lg shadow-lg bg-gray-50">
        <div class="text-left mb-5">
            <h1 class="text-gray-700 font-semibold text-2xl">Overview</h1>
        </div>
        <div class="flex justify-center">
            <div class="w-2/3">
                <canvas id="overviewChart"></canvas>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var ctx = document.getElementById('overviewChart').getContext('2d');
    var overviewChart = new Chart(ctx, {
        type: 'bar', // Tipe grafik, bisa diganti dengan 'line', 'pie', dll.
        data: {
            labels: ['Jumlah Data Barang', 'Jumlah Data Barang Keluar', 'Jumlah Data Barang Masuk'],
            datasets: [{
                label: 'Jumlah Data',
                data: [{{$countProducts}}, {{$countProductOutcome}}, {{$countProductIncome}}],
                backgroundColor: [
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(255, 99, 132, 0.2)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(255, 99, 132, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
@endsection

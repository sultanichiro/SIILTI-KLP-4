@extends('layouts.main')

@section('container')

@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class=" text-green-400 text-sm font-bold capitalize">{{session()->get('message')}}</div>
</div>
@endif

<div class="container px-4">
    <div class="bg-white mt-5 p-5 rounded-lg">
        <div class="flex justify-between">
            <div class="text-left">
                <h2 class="text-gray-600 font-bold">Riwayat Peminjaman Anda</h2>
            </div>
            <form method="get" action="/riwayat-loan-barang" class="form">
                <div class="flex">
                    <div class="border p-1 px-2 rounded-l">
                      <input id="search" name="search" class="focus:outline-none text-sm" type="text" placeholder="search">
                    </div>
                    <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">cari</button>
                </div>
            </form>
        </div>

        <table class="w-full mt-3 text-sm text-gray-600">
            <thead>
                <tr class="font-bold border-b-2 p-2">
                    <th class="p-2">No</th>
                    <th class="p-2">Nama</th>
                    <th class="p-2">Nama Barang</th>
                    <th class="p-2">Jumlah</th>
                    <th class="p-2">Waktu Mulai</th>
                    <th class="p-2">Waktu Selesai</th>
                    <th class="p-2">Masukan</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $noloan = 1;
                @endphp
                @foreach ($loans as $loan)
                    <tr class="border-b p-2">
                        <td class="p-2">{{$noloan}}</td> 
                        <td class="p-2">{{$loan->user->name}}</td>
                        <td class="p-2">{{$loan->product ? $loan->product->name : 'Produk tidak ditemukan' }}</td>
                        <td class="p-2">{{$loan->quantity}}</td>
                        <td class="p-2">{{$loan->tanggal_peminjaman}}</td>
                        <td class="p-2">{{$loan->tanggal_pengembalian ? $loan->tanggal_pengembalian : '-'}}</td> 
                        <td class="p-2 flex gap-2">
                            <a href="/saran-barang-user/{{ $loan->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                <i class="ri-information-line"></i>
                            </a>
                        </td>
                    </tr>
                    @php
                        $noloan++;
                    @endphp
                @endforeach
            </tbody>
        </table>
        <div class="mt-5">
            {{$loans->links('pagination::tailwind')}}
        </div>
    </div>
</div>

@endsection    

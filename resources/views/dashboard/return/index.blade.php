@extends('layouts.main')

@section('container')

@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class=" text-green-400 text-sm font-bold capitalize">{{session()->get('message')}}</div>
</div>
@endif

<div class="container mx-auto px-4">
    <div class="bg-white mt-5 p-5 rounded-lg shadow-md">
        <div class="flex justify-between items-center">
            <div class="text-left">
                <h2 class="text-gray-600 font-bold">Data Pengembalian</h2>
                <a href="/input-return-barang" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 items-center justify-center">
                    <i class="ri-add-line"></i>
                </a>
            </div>
            <form method="get" action="/return-barang" class="flex items-center">
                <div class="flex">
                    <input id="search" name="search" class="focus:outline-none text-sm border p-2 rounded-l" type="text" placeholder="search">
                    <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">cari</button>
                </div>
            </form>
        </div>

        <table class="w-full mt-5 text-sm text-gray-600">
            <thead>
                <tr class="font-bold border-b-2 p-2">
                    <th class="p-2">No</th>
                    <th class="p-2">Nama Peminjam</th>
                    <th class="p-2">Nama Barang</th>
                    <th class="p-2">Jumlah Kembali</th>
                    <th class="p-2">Tanggal Pengembalian</th>
                    <th class="p-2">Komentar dan Saran</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($returns as $return)
                <tr class="border-b p-2">
                    <td class="p-2">{{ $loop->iteration }}</td>
                    <td class="p-2">{{ $return->transaction->name }}</td>
                    <td class="p-2">{{ $return->product->name }}</td>
                    <td class="p-2">{{ $return->quantity_returned }}</td>
                    <td class="p-2">{{ $return->tanggal_pengembalian }}</td>
                    <td class="p-2 flex gap-2">
                        <a href="/saran-barang-user/{{ $return->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                            <i class="ri-information-line"></i>
                        </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

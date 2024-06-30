@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex items-center justify-between mb-5">
            <h2 class="text-gray-600 font-bold text-lg">Detail Barang Keluar</h2>
            <a href="/barang-keluar" class="bg-gray-600 text-white py-2 px-4 rounded text-sm hover:bg-gray-700">Kembali</a>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="product_id">Barang</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="product_id" value="{{ $productOutcome->product->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="product_id" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Mahasiswa</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="name" value="{{ $productOutcome->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="name" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="quantity">Jumlah Barang</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="quantity" value="{{ $productOutcome->quantity }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="quantity" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="date">Tanggal</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="date" value="{{ $productOutcome->date }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="date" type="text" disabled>
                </div>
            </div>
            <div class="mt-3 col-span-2">
                <label class="text-sm text-gray-600" for="desc">Keterangan</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <textarea name="desc" class="text-black w-full h-20 focus:outline-none text-sm bg-transparent" id="desc" rows="3" disabled>{{ $productOutcome->desc }}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

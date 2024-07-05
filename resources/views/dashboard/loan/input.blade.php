@extends('layouts.main')

@section('container')
<div class="container mx-auto px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data Peminjaman</h2>
        </div>

        <form action="/store-loan-barang" method="POST" enctype="multipart/form-data" class="w-full mt-5">
            @csrf
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Peminjam</label>
                <div class="border-2 p-1 @error('name') border-red-400 @enderror">
                    <input name="name" value="{{ Auth::user()->name }}" class="text-black w-full h-full focus:outline-none text-sm" id="name" type="text" readonly>
                </div>
                @error('name')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="product_id">Nama Barang</label>
                    <div class="border">
                        <select name="product_id" class="select-product text-black w-full" id="select-product">
                            <option value="" disabled selected>Pilih Barang</option>
                            @foreach($products as $product)
                                <option value="{{ $product->id }}">{{ $product->kode_barang }} / {{ $product->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="quantity">Jumlah</label>
                    <div class="@error('quantity') border-red-400 @enderror border-2 p-1">
                        <input name="quantity" class="text-sm text-black w-full h-full focus:outline-none" id="quantity" type="number">
                    </div>
                    @error('quantity')
                        <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>
                <div class="flex gap-1 mt-3">
                    <div class="w-full">
                        <label class="text-sm text-gray-600" for="tanggal_pengembalian">Tanggal dan Waktu Pengembalian</label>
                        <div class="border-2 p-1 @error('tanggal_pengembalian') border-red-400 @enderror">
                            <input name="tanggal_pengembalian" class="text-sm text-black w-full h-full focus:outline-none" id="tanggal_pengembalian" type="datetime-local" min="{{ now()->addDay(1)->format('Y-m-d\TH:i') }}">
                        </div>
                        @error('tanggal_pengembalian')
                            <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                        @enderror
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Data</button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectProduct = document.getElementById('select-product');
        const choices = new Choices(selectProduct, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Barang',
            removeItemButton: true,
        });
    });
</script>
@endsection

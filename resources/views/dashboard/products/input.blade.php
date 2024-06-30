@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data Barang</h2>
        </div>

        <form action="/input-barang" method="POST" enctype="multipart/form-data" class="w-full mt-5">
            @csrf
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="kode_barang">Kode Barang</label>
                <div class="border-2 p-1 @error('kode_barang') border-red-400 @enderror">
                    <input name="kode_barang" value="{{ old('kode_barang') }}" class="text-black w-full h-full focus:outline-none text-sm" id="kode_barang" type="text">
                </div>
                @error('kode_barang')
                <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Barang</label>
                <div class="border-2 p-1 @error('name') border-red-400 @enderror">
                    <input name="name" value="{{ old('name') }}" class="text-black w-full h-full focus:outline-none text-sm" id="name" type="text">
                </div>
                @error('name')
                <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="price">Harga Barang</label>
                <div class="border-2 p-1 @error('price') border-red-400 @enderror">
                    <input value="{{ old('price') }}" name="price" class="text-black text-sm w-full h-full focus:outline-none" id="price" type="number">
                </div>
                @error('price')
                <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="room_id">Ruangan</label>
                    <div class="border">
                        <select name="room_id" class="select-room text-black w-full" id="select-room">
                            <option value="" disabled selected>Pilih Ruangan</option>
                            @foreach($ruangans as $ruangan)
                            <option class="text-sm" value="{{ $ruangan->id }}">{{ $ruangan->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="image">Gambar Barang</label>
                <div class="border-2 p-1 @error('image') border-red-400 @enderror">
                    <input type="file" name="image" class="text-sm w-full h-full focus:outline-none" id="image">
                </div>
                @error('image')
                <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="category">Kategori Barang</label>
                    <div class="border">
                        <select name="category_id" class="select-category text-black w-full" id="select-category">
                            <option value="" disabled selected>Pilih Kategori</option>
                            @foreach($categories as $category)
                            <option class="text-sm" value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </select>
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
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectRoom = document.getElementById('select-room');
        const selectCategory = document.getElementById('select-category');

        const choicesRoom = new Choices(selectRoom, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Ruangan',
            removeItemButton: true,
        });

        const choicesCategory = new Choices(selectCategory, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Kategori',
            removeItemButton: true,
        });
    });
</script>
@endsection

@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Ubah Data Barang Keluar</h2>
        </div>

        <form action="{{ route('update_keluar', $productOutcome->id) }}" method="POST" class="w-full mt-5">
            @csrf
            @method('PUT')
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600"  for="name">Nama Barang</label>
                    <div class="border">
                        {{-- select with choice js --}}
                        <select name="product_id" data-id-product="{{$productOutcome->product_id}}"  class="select-product text-black" id="">
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="quantity">Jumlah Barang Keluar</label>
                <div class="@error('quantity')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$productOutcome->quantity}}" name="quantity" autocomplete="off" class="text-sm text-black w-full h-full focus:outline-none" id="quantity" type="number">
                </div>
                @error('quantity')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="date">Tanggal</label>
                <div class="@error('date')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$productOutcome->date}}" type="date" name="date" class="text-sm text-black w-full h-full focus:outline-none" id="date" type="text">
                </div>
                 @error('date')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Mahasiswa</label>
                <div class="border-2 p-1 @error('name') border-red-400 @enderror">
                    <input name="name" value="{{$productOutcome->name}}" class="w-full h-full focus:outline-none text-sm" id="name" type="text">
                </div>
                @error('name')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="desc">Keterangan</label>
                <div class="border-2 p-1 @error('desc') border-red-400 @enderror">
                    <textarea name="desc" class="text-black w-full h-20 focus:outline-none text-sm" id="desc">{{ old('desc', $productOutcome->desc) }}</textarea>
                </div>
                @error('desc')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Data</button>
            </div>
        </div>
    </form>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('js/supplies/update.js') }}"></script>
@endsection


@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data Barang Keluar</h2>
        </div>

        <form action="/input-barang-keluar" method="POST" class="w-full mt-5">
            @csrf
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="product_id">Nama Barang</label>
                    <div class="border">
                        <select name="product_id" class="select-product text-black w-full" id="select-product">
                            <option value="" disabled selected>Pilih Barang</option>
                            @foreach($products as $product)
                                <option value="{{ $product->id }}">{{ $product->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="quantity">Jumlah Barang</label>
                <div class="@error('quantity')  border-red-400  @enderror border-2 p-1">
                    <input name="quantity" autocomplete="off" class="text-sm text-black w-full h-full focus:outline-none" id="quantity" type="number">
                </div>
                @error('quantity')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="date">Tanggal</label>
                <div class="@error('date')  border-red-400  @enderror border-2 p-1">
                    <input type="date" name="date" class="text-sm text-black w-full h-full focus:outline-none" id="date">
                </div>
                 @error('date')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Mahasiswa</label>
                <div class="@error('name')  border-red-400  @enderror border-2 p-1">
                    <input type="text" name="name" class="text-sm text-black w-full h-full focus:outline-none" id="name">
                </div>
                 @error('name')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="desc">Keterangan</label>
                <div class="border-2 p-1 @error('desc') border-red-400 @enderror">
                    <textarea name="desc" class="text-black w-full h-20 focus:outline-none text-sm" id="desc">{{ old('desc') }}</textarea>
                </div>
                @error('desc')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Data</button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
    <script src="{{ asset('js/choices.min.js') }}"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const selectProduct = document.getElementById('select-product');
            const choicesProduct = new Choices(selectProduct, {
                searchEnabled: true,
                itemSelectText: '',
                placeholderValue: 'Pilih Barang',
                removeItemButton: true,
            });
        });
    </script>
    <style>
        .choices__inner {
            border-radius: 0.375rem; /* sesuai dengan border-radius Tailwind */
            border-color: #d1d5db; /* sesuai dengan border color Tailwind (gray-300) */
        }

        .choices__list--single {
            padding: 0.25rem; /* sesuai dengan padding Tailwind (p-1) */
        }

        .choices__list--dropdown .choices__item--selectable {
            padding: 0.5rem; /* sesuai dengan padding Tailwind (p-2) */
        }
    </style>
@endsection

@extends('layouts.main')

@section('container')
<div class="container mx-auto px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Edit Barang Masuk</h2>
        </div>

        <form action="{{ route('update_masuk', ['id' => $productIncome->id]) }}" method="POST" enctype="multipart/form-data" class="w-full mt-5">
            @csrf
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="product_id">Nama Barang</label>
                    <div class="border">
                        <select name="product_id" class="select-product text-black w-full" id="select-product">
                            <option value="" disabled selected>Pilih Barang</option>
                            @foreach($products as $product)
                                <option value="{{ $product->id }}"{{ $productIncome->product_id == $product->id ? 'selected' : '' }}>
                                    ({{ $product->kode_barang }}){{ $product->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="supplier_id">Supplier</label>
                    <div class="border">
                        <select name="supplier_id" class="select-supplier text-black w-full" id="select-supplier">
                            <option value="" disabled selected>Pilih Supplier</option>
                            @foreach($suppliers as $supplier)
                                <option value="{{ $supplier->id }}"{{ $productIncome->supplier_id == $supplier->id ? 'selected' : '' }}>
                                    {{ $supplier->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="quantity">Jumlah Barang Masuk</label>
                <div class="@error('quantity')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$productIncome->quantity}}" name="quantity" autocomplete="off" class="text-sm text-black w-full h-full focus:outline-none" id="quantity" type="number">
                </div>
                @error('quantity')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="date">Tanggal</label>
                <div class="@error('date')  border-red-400  @enderror border-2 p-1">
                    <input value="{{$productIncome->date}}" type="date" name="date" class="text-sm text-black w-full h-full focus:outline-none" id="date">
                </div>
                 @error('date')
                    <p class="italic text-red-500 text-sm mt-1">{{$message}}</p>
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
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectProduct = document.getElementById('select-product');
        const selectSupplier = document.getElementById('select-supplier');
        
        const choicesProduct = new Choices(selectProduct, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Barang',
            removeItemButton: true,
        });

        const choicesSupplier = new Choices(selectSupplier, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Supplier',
            removeItemButton: true,
        });
    });
</script>
@endsection

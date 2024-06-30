@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data Pengembalian</h2>
        </div>

        <form action="{{ route('store_return_barang') }}" method="POST" class="w-full mt-5">
            @csrf
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="transaction_id">ID Transaksi</label>
                <div class="border-2 p-1 @error('transaction_id')  border-red-400  @enderror">
                    <select name="transaction_id" class="select-transaction text-black w-full h-full focus:outline-none text-sm" id="select-transaction">
                        <option value="" disabled selected>Pilih Transaksi</option>
                        @foreach($transactions as $transaction)
                            <option value="{{ $transaction->id }}">
                                {{ $transaction->id }} - {{ $transaction->user->name }} - {{ $transaction->product->name }}
                            </option>
                        @endforeach
                    </select>
                </div>
                @error('transaction_id')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="tanggal_pengembalian">Tanggal Pengembalian</label>
                <div class="border-2 p-1 @error('tanggal_pengembalian') border-red-400 @enderror">
                    <input type="date" name="tanggal_pengembalian" class="text-sm text-black w-full h-full focus:outline-none" id="tanggal_pengembalian">
                </div>
                @error('tanggal_pengembalian')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="quantity_returned">Jumlah Barang Kembali</label>
                <div class="border-2 p-1 @error('quantity_returned') border-red-400 @enderror">
                    <input type="number" name="quantity_returned" class="text-sm text-black w-full h-full focus:outline-none" id="quantity_returned">
                </div>
                @error('quantity_returned')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Data Pengembalian</button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
<script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const selectTransaction = document.getElementById('select-transaction');
        const choices = new Choices(selectTransaction, {
            searchEnabled: true,
            itemSelectText: '',
            placeholderValue: 'Pilih Transaksi',
            removeItemButton: true,
            position: 'bottom', // Atur agar dropdown muncul di bagian bawah
        });
    });
</script>
@endsection

@section('css')
<style>
    .choices[data-choice] {
        position: absolute;
        z-index: 1000; /* Atur z-index yang tinggi, pastikan lebih tinggi dari elemen lain */
    }

    .choices__list--dropdown {
        top: 100%; /* Pastikan dropdown muncul ke bawah */
    }

    .choices__list--dropdown .choices__item--selectable {
        padding: 0.5rem; /* Sesuaikan padding jika diperlukan */
    }
</style>
@endsection





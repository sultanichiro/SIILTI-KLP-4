@extends('layouts.main')

@section('container')
<div class="container mx-auto px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Input Data Peminjaman</h2>
        </div>

        <form action="/store-labor" method="POST" enctype="multipart/form-data" class="w-full mt-5">
            @csrf
            <div class="mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="room_id">Labor</label>
                    <div class="border">
                        <select name="room_id" class="select-product text-black w-full" id="select-product">
                            <option value="" disabled selected>Pilih Labor</option>
                            @foreach($ruangans as $ruangan)
                                <option value="{{ $ruangan->id }}">{{ $ruangan->name }}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="day">Hari</label>
                    <div class="@error('day') border-red-400 @enderror border-2 p-1">
                        <input name="day" class="text-sm text-black w-full h-full focus:outline-none" id="day" type="text">
                    </div>
                    @error('day')
                        <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="date">Tanggal</label>
                    <div class="@error('date') border-red-400 @enderror border-2 p-1">
                        <input name="date" class="text-sm text-black w-full h-full focus:outline-none" id="date" type="date">
                    </div>
                    @error('date')
                        <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="time">Jam</label>
                    <div class="@error('time') border-red-400 @enderror border-2 p-1">
                        <input name="time" class="text-sm text-black w-full h-full focus:outline-none" id="time" type="time">
                    </div>
                    @error('time')
                        <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="kegiatan">Kegiatan</label>
                    <div class="@error('kegiatan') border-red-400 @enderror border-2 p-1">
                        <textarea name="kegiatan" class="text-sm text-black w-full h-full focus:outline-none" id="kegiatan" rows="4"></textarea>
                    </div>
                    @error('kegiatan')
                        <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
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
            placeholderValue: 'Pilih Ruangan',
            removeItemButton: true,
        });
    });
</script>
@endsection

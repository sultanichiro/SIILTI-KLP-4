@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Berikan Saran dan Komentar Peminjaman</h2>
        </div>

        <form action="/store-saran-barang-user/{{ $loan->id }}" method="POST" class="w-full mt-5">
            @csrf
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="desc">Saran dan Komentar</label>
                <div class="border-2 p-1 @error('desc') border-red-400 @enderror">
                    <textarea name="desc" class="text-black w-full h-20 focus:outline-none text-sm" id="desc">{{ old('desc') }}</textarea>
                </div>
                @error('desc')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Saran dan Komentar</button>
            </div>
        </form>
    </div>
</div>
@endsection

@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex items-center justify-between mb-5">
            <h2 class="text-gray-600 font-bold text-lg">Detail Data Mahasiswa</h2>
            <a href="{{ route('return_barang') }}" class="bg-gray-600 text-white py-2 px-4 rounded text-sm hover:bg-gray-700">Kembali</a>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div class="mt-3 col-span-2">
                <label class="text-sm text-gray-600" for="desc">Saran dan Komentar</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <textarea name="desc" class="text-black w-full h-20 focus:outline-none text-sm bg-transparent" id="desc" rows="3" disabled>{{ $transaction->desc }}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

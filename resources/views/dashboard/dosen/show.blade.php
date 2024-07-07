@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-6 mt-10 rounded-lg shadow-lg">
        <div class="flex items-center justify-between mb-6">
            <h2 class="text-gray-700 font-semibold text-xl">Detail Data Dosen</h2>
            <a href="{{ route('dosen') }}" class="bg-gray-700 text-white py-2 px-4 rounded-lg text-sm hover:bg-gray-800">Kembali</a>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="mt-3">
                <label class="text-sm text-gray-700 font-medium" for="nidn">NIDN</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <input name="nidn" value="{{ $dosen->nidn }}" class="text-gray-800 w-full h-full focus:outline-none text-sm bg-transparent" id="nidn" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-700 font-medium" for="nip">NIP</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <input name="nip" value="{{ $dosen->nip }}" class="text-gray-800 w-full h-full focus:outline-none text-sm bg-transparent" id="nip" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-700 font-medium" for="name">Nama Dosen</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <input name="name" value="{{ $dosen->name }}" class="text-gray-800 w-full h-full focus:outline-none text-sm bg-transparent" id="name" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-700 font-medium" for="email">Email</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <input name="email" value="{{ $dosen->email }}" class="text-gray-800 w-full h-full focus:outline-none text-sm bg-transparent" id="email" type="email" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-700 font-medium" for="no_telp">No Telfon</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <input name="no_telp" value="{{ $dosen->no_telp }}" class="text-gray-800 w-full h-full focus:outline-none text-sm bg-transparent" id="no_telp" type="text" disabled>
                </div>
            </div>
            <div class="mt-3 col-span-2">
                <label class="text-sm text-gray-700 font-medium" for="alamat">Alamat</label>
                <div class="border-2 bg-gray-50 p-3 rounded-lg">
                    <textarea name="alamat" class="text-gray-800 w-full h-24 focus:outline-none text-sm bg-transparent" id="alamat" rows="3" disabled>{{ $dosen->alamat }}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

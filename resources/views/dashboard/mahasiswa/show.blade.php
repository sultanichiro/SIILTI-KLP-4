@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg shadow-md">
        <div class="flex items-center justify-between mb-5">
            <h2 class="text-gray-600 font-bold text-lg">Detail Data Mahasiswa</h2>
            <a href="{{ route('mahasiswa') }}" class="bg-gray-600 text-white py-2 px-4 rounded text-sm hover:bg-gray-700">Kembali</a>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="nim">NIM</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="nim" value="{{ $mahasiswa->nim }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="nim" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama Mahasiswa</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="name" value="{{ $mahasiswa->name }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="name" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="jurusan">Jurusan</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="jurusan" value="{{ $mahasiswa->jurusan }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="jurusan" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="prodi">Program Studi</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="prodi" value="{{ $mahasiswa->prodi }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="prodi" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="angkatan">Angkatan</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="angkatan" value="{{ $mahasiswa->angkatan }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="angkatan" type="text" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="email">Email</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="email" value="{{ $mahasiswa->email }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="email" type="email" disabled>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="no_telp">No Telfon</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <input name="no_telp" value="{{ $mahasiswa->no_telp }}" class="text-black w-full h-full focus:outline-none text-sm bg-transparent" id="no_telp" type="text" disabled>
                </div>
            </div>
            <div class="mt-3 col-span-2">
                <label class="text-sm text-gray-600" for="alamat">Alamat</label>
                <div class="border-2 bg-gray-100 p-2 rounded">
                    <textarea name="alamat" class="text-black w-full h-20 focus:outline-none text-sm bg-transparent" id="alamat" rows="3" disabled>{{ $mahasiswa->alamat }}</textarea>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

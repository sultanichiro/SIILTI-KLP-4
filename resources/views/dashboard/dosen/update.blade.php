@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Update Data Dosen</h2>
        </div>

        <form action="/update-dosen/{{$dosen->id}}" method="POST" class="w-full mt-5">
            @csrf
            @method('PUT')
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="nip">NIP</label>
                <div class="border-2 p-1 @error('nip') border-red-400 @enderror">
                    <input name="nip" value="{{ old('nip', $dosen->nip) }}" class="text-black w-full h-full focus:outline-none text-sm" id="nip" type="text">
                </div>
                @error('nip')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="name">Nama</label>
                <div class="border-2 p-1 @error('name') border-red-400 @enderror">
                    <input name="name" value="{{ old('name', $dosen->name) }}" class="text-black w-full h-full focus:outline-none text-sm" id="name" type="text">
                </div>
                @error('name')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="email">Email</label>
                <div class="border-2 p-1 @error('email') border-red-400 @enderror">
                    <input name="email" value="{{ old('email', $dosen->email) }}" class="text-black w-full h-full focus:outline-none text-sm" id="email" type="email">
                </div>
                @error('email')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="no_telp">No Telfon</label>
                <div class="border-2 p-1 @error('no_telp') border-red-400 @enderror">
                    <input name="no_telp" value="{{ old('no_telp', $dosen->no_telp) }}" class="text-black w-full h-full focus:outline-none text-sm" id="no_telp" type="text">
                </div>
                @error('no_telp')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="alamat">Alamat</label>
                <div class="border-2 p-1 @error('alamat') border-red-400 @enderror">
                    <textarea name="alamat" class="text-black w-full h-20 focus:outline-none text-sm" id="alamat">{{ old('alamat', $dosen->alamat) }}</textarea>
                </div>
                @error('alamat')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Perubahan Data</button>
            </div>
        </form>
    </div>
</div>
@endsection

@extends('layouts.main')

@section('container')

@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class="text-green-400 text-sm font-bold capitalize">{{ session()->get('message') }}</div>
</div>
@endif

@if ($errors->any())
   <div id="toast-container" class="fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-red-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class="text-red-400 text-sm font-bold capitalize">
        @foreach ($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
</div>
@endif

<div class="container px-4">
    <div class="bg-white mt-5 p-5 rounded-lg">
        <div class="text-left">
            <h2 class="text-gray-600 font-bold">Import Data Mahasiswa</h2>
            <a href="/petugas" class="text-sm inline-block bg-gray-700 text-white mt-2 px-2 py-1">Kembali</a>
        </div>

        <form action="/import/user" method="POST" enctype="multipart/form-data" class="mt-5">
            @csrf
            <div class="mb-4">
                <label class="block text-sm font-medium text-gray-700" for="file">Pilih File:</label>
                <input type="file" name="file" id="file" class="mt-1 block w-full p-2 border border-gray-300 rounded-lg text-sm focus:outline-none focus:ring-1 focus:ring-gray-400 focus:border-gray-400">
            </div>
            <div>
                <button type="submit" class="text-sm bg-gray-700 text-white mt-2 px-4 py-2 rounded">Import</button>
            </div>
        </form>
    </div>
</div>

@endsection

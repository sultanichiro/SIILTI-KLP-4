@extends('layouts.main')

@section('container')

@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class=" text-green-400 text-sm font-bold capitalize">{{session()->get('message')}}</div>
</div>
@endif

<div class="container px-4">
    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        <div class="bg-white rounded-lg p-5 shadow-md">
            <img src="logo-tekinfo.jpg" alt="Kegiatan Labor" class="w-full h-auto rounded-t-lg">
            <div class="p-4">
                <h2 class="text-gray-600 font-bold">Kegiatan Labor</h2>
                <div class="mt-3">
                    <p>Ini adalah halaman untuk menampilkan kategori "Kegiatan Labor".</p>
                    <a href="/labor" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 rounded">
                        Selengkapnya
                    </a>
                </div>
            </div>
        </div>

        <div class="bg-white rounded-lg p-5 shadow-md">
            <img src="logo-tekinfo.jpg" alt="Activity Log" class="w-full h-auto rounded-t-lg">
            <div class="p-4">
                <h2 class="text-gray-600 font-bold">Activity User</h2>
                <div class="mt-3">
                    <p>Ini adalah halaman untuk menampilkan kategori "Activity User".</p>
                    <a href="/activity-logs" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 rounded">
                        Selengkapnya
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-4 grid grid-cols-1 md:grid-cols-2 gap-4">
        <div class="bg-white rounded-lg p-5 shadow-md">
            <img src="logo-tekinfo.jpg " alt="Report Bug" class="w-full h-auto rounded-t-lg">
            <div class="p-4">
                <h2 class="text-gray-600 font-bold">Report Bug</h2>
                <div class="mt-3">
                    <p>Ini adalah halaman untuk menampilkan kategori "Report Bug".</p>
                    <a href="/bug-reports" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 rounded">
                        Selengkapnya
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@extends('layouts.main')

@section('container')
@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class="text-green-400 text-sm font-bold capitalize">{{ session()->get('message') }}</div>
</div>
@endif
    <div class="container px-4">
        <div class="bg-white mt-5 p-5 rounded-lg">
            <div class="flex justify-between">
                <form method="get" action="/bug-reports" class="form">
                    <div class="flex">
                        <div class="border p-1 px-2 rounded-l">
                          <input id="search" name="search" class="focus:outline-none text-sm" type="text" placeholder="search">
                        </div>
                        <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">Cari</button>
                    </div>
                </form>
            </div>

            <table class="w-full mt-5 text-sm text-gray-600">
                <thead>
                    <tr class="font-bold border-b-2 p-2">
                        <td class="p-2">No</td>
                        <td class="p-2">Dilaporkan oleh</td>
                        <td class="p-2">Melaporkan</td>
                        <td class="p-2">Tanggal</td>
                    </tr>
                </thead>
                <tbody>
                    @php $noBugReport = 1; @endphp
                    @foreach ($bugReports as $bugReport)
                        <tr class="border-b p-2">
                        <td class="p-2">{{ $noBugReport }}</td>
                        <td class="p-2">{{ $bugReport->user->name }}</td>
                        <td class="p-2">{{ $bugReport->description  }}</td>
                        <td class="p-2">{{ $bugReport->created_at->format('d/m/Y H:i') }}</td>
                    </tr>
                    @php 
                        $noBugReport++; 
                    @endphp
                    @endforeach
                </tbody>
            </table>
            <div class="mt-5">
                {{ $bugReports->links('pagination::tailwind') }}
            </div>
        </div>
    </div>
@endsection

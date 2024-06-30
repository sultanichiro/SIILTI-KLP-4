@extends('layouts.main')

@section('container')

@if (session('message'))
   <div id="toast-container" class="hidden fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
    <div class=" text-green-400 text-sm font-bold capitalize">{{session()->get('message')}}</div>
</div>
@endif
    <div class="container px-4">
        <div class="bg-white mt-5 p-5 rounded-lg">
            <div class="flex justify-between">
                <div class="text-left">
                    <h2 class="text-gray-600 font-bold">Data Barang</h2>
                    @can('view_peminjaman')
                    <div class="flex flex-row space-x-2 mt-2">
                        <a href="/input-barang" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-add-line"></i>
                        </a>
                        <a href="/excel/products" class="text-sm inline-block bg-green-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-file-excel-2-line mr-2"></i>
                        </a>
                        <a href="/input-import-products" class="text-sm inline-block bg-green-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-upload-2-line mr-2"></i>
                        </a>
                        <a href="{{ route('import_PDF') }}" target="_blank" class="text-sm inline-block bg-red-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-file-pdf-line mr-2"></i>
                        </a>
                    </div>
                    @endcan
                </div>
                
                
                
                <form method="get" action="/barang" class="form">
                    <div class="flex">
                        <div class="border p-1 px-2 rounded-l">
                          <input id="search" name="search" class="focus:outline-none text-sm" type="text" placeholder="search">
                        </div>
                        <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">cari</button>
                    </div>
                </form>
            </div>

            <form id="mass-delete-form" method="POST" action="{{ route('mass_delete_products') }}">
                @csrf
                <table class="w-full mt-5 text-sm text-gray-600">
                    <thead>
                        <tr class="font-bold border-b-2 p-2">
                            <td class="p-2"><input type="checkbox" id="select-all"></td>
                            <td class="p-2">No</td>
                            <td class="p-2">Kode Barang</td>
                            <td class="p-2">Nama Barang</td>
                            <td class="p-2">Jumlah Barang</td>
                            <td class="p-2">Kategori Barang</td>
                            <td class="p-2">Aksi</td>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $noProduct = 1;
                        @endphp
                        @foreach ($products as $product)
                            <tr class="border-b p-2">
                                <td class="p-2"><input type="checkbox" name="selected_products[]" value="{{ $product->id }}"></td>
                                <td class="p-2">{{$noProduct}}</td>
                                <td class="p-2">{{$product->kode_barang}}</td>
                                <td class="p-2">{{$product->name}}</td>
                                <td class="p-2">{{$product->stock}}</td>
                                <td class="p-2">{{$product->category}}</td>
                                <td class="p-2 flex gap-2">
                                    <a href="/show_barang/{{ $product->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                        <i class="ri-information-line"></i>
                                    </a>
                                    @can('view_peminjaman')
                                    <button data-id="{{ $product->id }}" class="btn-delete-product bg-red-500 py-1 px-4 rounded text-white">
                                        <i class="ri-delete-bin-line"></i>
                                    </button>
                                    <a href="/ubah-barang/{{ $product->id }}" class="bg-yellow-400 py-1 px-4 rounded text-white">
                                        <i class="ri-edit-box-line"></i>
                                    </a>
                                    @endcan
                                </td>
                                
                            </tr>
                            @php
                                $noProduct++;
                            @endphp
                        @endforeach
                    </tbody>
                </table>
                <button type="submit" class="mt-4 bg-red-600 text-white px-4 py-2 rounded">Delete Selected</button>
            </form>

            <div class="mt-5">
                {{$products->links('pagination::tailwind')}}
            </div>
        </div>
    </div>

    <script>
        document.getElementById('select-all').addEventListener('change', function() {
            const checkboxes = document.querySelectorAll('input[name="selected_products[]"]');
            checkboxes.forEach(checkbox => checkbox.checked = this.checked);
        });
    </script>
@endsection

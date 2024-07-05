@extends('layouts.main')

@section('container')
    @if (session('message'))
        <div id="toast-container" class="fixed z-50 items-center w-full max-w-xs p-4 space-x-4 text-gray-500 bg-white divide-x divide-gray-200 rounded border-l-2 border-green-400 shadow top-5 right-5 dark:text-gray-400 dark:divide-gray-700 space-x dark:bg-gray-800" role="alert">
            <div class="text-green-400 text-sm font-bold capitalize">{{ session('message') }}</div>
        </div>
    @endif

    <div class="container px-4">
        <div class="bg-white mt-5 p-5 rounded-lg">
            <div class="flex justify-between items-center">
                <div class="text-left">
                    <h2 class="text-gray-600 font-bold text-lg">Data Barang</h2>
                    <div>
                        <a href="{{ route('import_PDF') }}" target="_blank" class="text-sm inline-block bg-red-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-file-pdf-line mr-2"></i>
                        </a>
                    </div>
                </div>
                
                <form method="get" action="/barang-pimpinan" class="form">
                    <div class="flex">
                        <div class="border p-1 px-2 rounded-l">
                            <input id="search" name="search" class="focus:outline-none text-sm" type="text" placeholder="Search">
                        </div>
                        <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full ml-1">Cari</button>
                    </div>
                </form>
            </div>

            <form id="mass-validate-form" method="POST" action="{{ route('mass_validate_products') }}">
                @csrf
                <table class="w-full mt-5 text-sm text-gray-600">
                    <thead>
                        <tr class="font-bold border-b-2 p-2">
                            <th class="p-2">No</th>
                            <th class="p-2">Kode Barang</th>
                            <th class="p-2">Nama Barang</th>
                            <th class="p-2">Jumlah Barang</th>
                            <th class="p-2">Kategori Barang</th>
                            <th class="p-2">Validasi</th>
                            <th class="p-2">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($products as $product)
                            <tr class="border-b">
                                <td class="p-2">{{ $loop->iteration }}</td>
                                <td class="p-2">{{ $product->kode_barang }}</td>
                                <td class="p-2">{{ $product->name }}</td>
                                <td class="p-2">{{ $product->stock }}</td>
                                <td class="p-2">{{ $product->category->name }}</td>
                                <td class="p-2">
                                    <input type="checkbox" name="selected_products[]" value="{{ $product->id }}" {{ $product->verified ? 'checked' : '' }} class="form-checkbox h-5 w-5 text-blue-600">
                                </td>
                                <td class="p-2">
                                    <a href="/show_barang/{{ $product->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                        <i class="ri-information-line"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <div class="flex justify-end mt-4">
                    <button type="submit" class="text-sm bg-blue-600 text-white px-3 py-1 rounded">Validasi</button>
                </div>
            </form>

            <div class="mt-5">
                {{ $products->links('pagination::tailwind') }}
            </div>
        </div>
    </div>

    <script>
        // Optional: Select All Checkbox Functionality
        document.getElementById('select-all').addEventListener('change', function() {
            const checkboxes = document.querySelectorAll('input[name="selected_products[]"]');
            checkboxes.forEach(checkbox => checkbox.checked = this.checked);
        });
    </script>
@endsection
 
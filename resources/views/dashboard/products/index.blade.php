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
                        <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">Cari</button>
                    </div>
                </form>
            </div>

            <table class="w-full mt-5 text-sm text-gray-600">
                <thead>
                    <tr class="font-bold border-b-2 p-2">
                        <td class="p-2">No</td>
                        <td class="p-2">Kode Barang</td>
                        <td class="p-2">Nama Barang</td>
                        <td class="p-2">Jumlah Barang</td>
                        <td class="p-2">Kategori Barang</td>
                        @can('view_peminjaman')
                        <td class="p-2">Validasi</td>
                        <td class="p-2">Aksi</td>
                        @endcan
                        @can('view_riwayat_peminjaman')
                        <td class="p-2">Detail</td>
                        @endcan
                    </tr>
                </thead>
                <tbody>
                    @php
                        $noProduct = 1;
                    @endphp
                    @foreach ($products as $product)
                        <tr class="border-b p-2">
                            <td class="p-2">{{ $noProduct }}</td>
                            <td class="p-2">{{ $product->kode_barang }}</td>
                            <td class="p-2">{{ $product->name }}</td>
                            <td class="p-2">{{ $product->stock }}</td>
                            <td class="p-2">{{ $product->category }}</td>
                            @can('view_pengembalian')
                            <td class="p-2">
                                @if ($product->verified)
                                    <span class="text-green-600">Sudah Divalidasi</span>
                                @else
                                    <span class="text-red-600">Belum Tervalidasi</span>
                                @endif
                            </td>
                            @endcan
                            @can('view_peminjaman')
                            <td class="p-2 flex gap-2">
                                <a href="/show_barang/{{ $product->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                    <i class="ri-information-line"></i>
                                </a>
                                <form action="/hapus-barang/{{ $product->id }}" method="POST" class="form-delete">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn-delete-product bg-red-500 py-1 px-4 rounded text-white">
                                        <i class="ri-delete-bin-line"></i>
                                    </button>
                                </form>
                                <a href="/ubah-barang/{{ $product->id }}" class="bg-yellow-400 py-1 px-4 rounded text-white">
                                    <i class="ri-edit-box-line"></i>
                                </a>                            
                            </td>
                            @endcan
                            @can('view_riwayat_peminjaman')
                            <td class="p-2 flex gap-2">
                                <a href="/show_barang/{{ $product->id }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                    <i class="ri-information-line"></i>
                                </a>
                            </td>  
                            @endcan
                        </tr>
                        @php
                            $noProduct++;
                        @endphp
                    @endforeach
                </tbody>
            </table>
            <div class="mt-5">
                {{ $products->links('pagination::tailwind') }}
            </div>
        </div>
    </div>

    @section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        document.querySelectorAll('.form-delete').forEach(form => {
            form.addEventListener('submit', function(e) {
                e.preventDefault();
                const form = this;
                Swal.fire({
                    title: 'Apakah Anda yakin?',
                    text: "Data ini akan dihapus secara permanen!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Ya, hapus!',
                    cancelButtonText: 'Batal'
                }).then((result) => {
                    if (result.isConfirmed) {
                        form.submit();
                    }
                });
            });
        });
    </script>
    @endsection

@endsection

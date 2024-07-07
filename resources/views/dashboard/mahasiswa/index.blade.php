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
                <h2 class="text-gray-600 font-bold">Data Mahasiswa</h2>
                <a href="{{ route('input_mahasiswa') }}" class="text-sm inline-block bg-blue-700 text-white px-2 py-1 items-center justify-center">
                    <i class="ri-add-line"></i>
                </a>
                <a href="/excel/mahasiswa" class="text-sm inline-block bg-green-700 text-white px-2 py-1 items-center justify-center">
                    <i class="ri-file-excel-2-line mr-2"></i>
                </a>
                <a href="/input-import-mahasiswa" id="import-mahasiswa" class="text-sm inline-block bg-green-700 text-white px-2 py-1 items-center justify-center">
                    <i class="ri-upload-2-line mr-2"></i>
                </a>
                <form method="get" action="/fetch-and-save-mahasiswa" class="inline-block">
                    <button type="submit" class="text-sm inline-block bg-yellow-400 text-white mt-2 ml-2 px-2 py-1 flex items-center justify-center">
                        <i class="ri-refresh-line"></i>
                    </button>
                </form>
            </div>
            <form method="get" action="{{ route('mahasiswa') }}" class="form">
                <div class="flex">
                    <div class="border p-1 px-2 rounded-l">
                        <input id="search" name="search" class="focus:outline-none text-sm" type="text" placeholder="search">
                    </div>
                    <button type="submit" class="text-sm bg-gray-700 p-2 rounded-r text-white h-full">Cari</button>
                </div>
            </form>
        </div>

        <form id="mass-delete-form" method="POST" action="{{ route('mahasiswa_mass_delete') }}">
            @csrf
            <table class="w-full mt-5 text-sm text-gray-600">
                <thead>
                    <tr class="font-bold border-b-2 p-2">
                        <td class="p-2"><input type="checkbox" id="select-all"></td>
                        <td class="p-2">No</td>
                        <td class="p-2">NIM</td>
                        <td class="p-2">Nama</td>
                        <td class="p-2">Prodi</td>
                        <td class="p-2">Email</td>
                        <td class="p-2">Aksi</td>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $noMahasiswa = 1;
                    @endphp
                    @foreach ($mahasiswas as $mahasiswa)
                        <tr class="border-b p-2">
                            <td class="p-2"><input type="checkbox" name="selected_mahasiswas[]" value="{{ $mahasiswa->id }}"></td>
                            <td class="p-2">{{ $noMahasiswa }}</td>
                            <td class="p-2">{{ $mahasiswa->nim }}</td>
                            <td class="p-2">{{ $mahasiswa->name }}</td>
                            <td class="p-2">{{ $mahasiswa->prodi }}</td>
                            <td class="p-2">{{ $mahasiswa->email }}</td>
                            <td class="p-2 flex gap-2">
                                <a href="{{ route('mahasiswa_show', $mahasiswa->id) }}" class="bg-blue-500 py-1 px-4 rounded text-white">
                                    <i class="ri-information-line"></i>
                                </a>
                                <form action="{{ route('mahasiswa_delete', $mahasiswa->id) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus?')">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="bg-red-500 py-1 px-4 rounded text-white">
                                        <i class="ri-delete-bin-line"></i>
                                    </button>
                                </form>
                                <a href="{{ route('edit_mahasiswa', $mahasiswa) }}" class="bg-yellow-400 py-1 px-4 rounded text-white">
                                    <i class="ri-edit-box-line"></i>
                                </a>
                            </td>
                        </tr>
                        @php
                            $noMahasiswa++;
                        @endphp
                    @endforeach
                </tbody>
            </table>
            <div class="mt-5 flex justify-end">
                <button type="button" onclick="deleteSelected()" class="text-sm bg-red-700 text-white px-4 py-2 rounded">Delete Selected</button>
            </div>
        </form>
        <div class="mt-5">
            {{ $mahasiswas->links('pagination::tailwind') }}
        </div>
    </div>
</div>

<script>
    document.getElementById('select-all').addEventListener('change', function(e) {
        var checkboxes = document.querySelectorAll('input[name="selected_mahasiswas[]"]');
        for (var checkbox of checkboxes) {
            checkbox.checked = e.target.checked;
        }
    });

    function confirmDelete(url) {
        Swal.fire({
            title: 'Konfirmasi',
            text: "Apakah Anda yakin ingin menghapus data ini?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Hapus!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = url;
            }
        });
    }

    function deleteSelected() {
        Swal.fire({
            title: 'Konfirmasi',
            text: "Apakah Anda yakin ingin menghapus semua data yang dipilih?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Hapus!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById('mass-delete-form').submit();
            }
        });
    }
</script>

@endsection

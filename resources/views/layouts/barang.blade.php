<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <meta name="csrf-token" content="{{ csrf_token() }}">

      <!-- CSS Choices.js -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/base.min.css"/>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/choices.js/public/assets/styles/choices.min.css"/>

      <!-- Remixicon -->
      <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
      
      <!-- SweetAlert2 -->
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

      <!-- Tailwind CSS -->
      <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

      <title>SIILTI</title>

      <style>
         .bg-main {
            background-image: url('https://simpediakat.pnp.ac.id/themes/FlexStart/assets/img/Pembangunan-Gedung-PKM-PNP-yang-Mangkrak-03a.jpg');
            background-size: cover;
            background-position: center;
         }
      </style>
   </head>
   <body class="text-black" style="overflow-y: scroll;">
      <!-- Navbar -->
      <nav class="bg-gray-900 shadow-md py-3 px-6">
         <div class="container mx-auto flex justify-between items-center">
            <div class="flex items-center">
               <img src="/siilti.jpeg" alt="logo" class="w-8 h-8 rounded mr-3 object-cover">
               <span class="text-lg font-bold text-white">Welcome to SIILTI</span>
            </div>
            <ul class="flex items-center space-x-4">
               <li><a href="/" class="text-white hover:text-gray-200">Home</a></li>
               <li><a href="/baranghome" class="text-white hover:text-gray-200">Barang</a></li>
               <li><a href="/login" class="text-white hover:text-gray-200">Login</a></li>
               <li><a href="/register" class="text-white hover:text-gray-200">Sign Up</a></li>
            </ul>
         </div>
      </nav>
      <!-- End Navbar -->

      <!-- Main Content -->
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
                        <a href="/input-barang" class="text-sm inline-block bg-gray-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-add-line"></i>
                        </a>
                        <a href="/excel/products" class="text-sm inline-block bg-gray-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-file-excel-2-line mr-2"></i>
                        </a>
                        <a href="/input_import_excel/products" class="text-sm inline-block bg-gray-700 text-white px-2 py-1 items-center justify-center">
                            <i class="ri-upload-2-line mr-2"></i>
                        </a>
                        <a href="{{ route('import_PDF') }}" target="_blank" class="text-sm inline-block bg-gray-700 text-white px-2 py-1 items-center justify-center">
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

            <table class="w-full mt-5 text-sm text-gray-600">
                <thead>
                    <tr class="font-bold border-b-2 p-2">
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
            <div class="mt-5">
                {{$products->links('pagination::tailwind')}}
            </div>
        </div>
    </div>
      <!-- End Main Content -->

      <!-- JavaScript Choices.js -->
      <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>

      <!-- Custom JS -->
      <script src="{{ asset('js/index.js') }}"></script>
      @yield('js')

      <script>
         function toggleDropdown(id) {
            document.getElementById(id).classList.toggle('hidden');
         }

         function toggleProfileDropdown() {
            document.getElementById('profile-dropdown').classList.toggle('hidden');
         }

         // Close the dropdown if the user clicks outside of it
         window.onclick = function(event) {
            if (!event.target.matches('.cursor-pointer')) {
               var dropdowns = document.getElementsByClassName("dropdown-content");
               for (var i = 0; i < dropdowns.length; i++) {
                  var openDropdown = dropdowns[i];
                  if (!openDropdown.classList.contains('hidden')) {
                     openDropdown.classList.add('hidden');
                  }
               }
            }
         }
      </script>
   </body>
</html>

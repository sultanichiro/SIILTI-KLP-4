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
      <nav class="bg-gray-900 shadow-md py-1">
         <div class="container mx-auto flex justify-between items-center">
            <div class="flex items-center space-x-2">
               <a href="/"><alt="logo" class="w-6 h-6 rounded object-cover"></a>
               <a href="/" class="text-white hover:text-gray-200 text-base">Home</a>
               <a href="/baranghome" class="text-white hover:text-gray-200 text-base">Barang</a>
            </div>
            <ul class="flex items-center space-x-1">
               <li><a href="/login" class="bg-blue-600 text-white py-1 px-2 rounded-lg hover:bg-blue-700 text-xs">Login</a></li>
               <li><a href="/register" class="bg-green-600 text-white py-1 px-2 rounded-lg hover:bg-green-700 text-xs">Sign Up</a></li>
            </ul>
         </div>
      </nav>
      <!-- End Navbar -->

      <!-- Main Content -->
      <main class="flex items-center justify-center min-h-screen bg-gray-50 bg-main">
         <div class="text-center bg-white bg-opacity-75 p-4 rounded-lg shadow-lg">
            <img src="/siilti.jpeg" alt="logo" class="w-24 h-24 rounded-full mx-auto mb-4 object-cover">
            <h1 class="text-4xl font-bold text-gray-900 mb-2">Selamat Datang di SIILTI</h1>
            <p class="text-lg text-gray-700 mb-4">Sistem Informasi Inventarisasi Laboratorium Teknologi Informasi</p>
            <a href="/login" class="bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700">Mulai Peminjamanmu</a>
         </div>
      </main>
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

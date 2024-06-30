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
      @vite('resources/css/app.css')

      <title>SIILTI</title>
   </head>
   <body class="text-black" style="overflow-y: scroll;">
      
      {{-- sidebar start --}}
      @include('layouts.sidebar')
      {{-- sidebar end --}}
      
      <main class="md:w-[calc(100%-192px)] md:ml-48 bg-gray-50 min-h-screen">
         {{-- navbar start --}}
         <div class="bg-white py-2 px-4 flex items-center justify-between shadow-md shadow-black/5 sticky top-0 left-0 z-30">
            <ul class="flex items-center text-sm">
               @can('view_dashboard')
                  <li class="mr-2">
                     <a href="/overview" class="text-gray-400 hover:text-gray-600 font-medium">Dashboard</a>
                  </li>
               @endcan
            </ul>
            <div class="relative mr-2 flex items-center">
               <img src="/siilti.jpeg" alt="logo" class="w-8 h-8 rounded-full object-cover cursor-pointer" onclick="showProfileOptions()"/>
            </div>
         </div>
         {{-- navbar end --}}

         {{-- main content --}}
         @yield('container')
         {{-- main content end --}}
      </main>

      <!-- JavaScript Choices.js -->
      <script src="https://cdn.jsdelivr.net/npm/choices.js/public/assets/scripts/choices.min.js"></script>

      <!-- Custom JS -->
      <script src="{{ asset('js/index.js') }}"></script>
      @yield('js')

      <script>
         function showProfileOptions() {
            Swal.fire({
               title: 'Profile Options',
               html: `
                        <div class="flex flex-col items-center">
                           <button id="reportBugButton" class="swal2-confirm swal2-styled bg-blue-600 text-white px-4 py-2 rounded-full shadow-lg hover:bg-blue-700 mb-2">Report Bug</button>
                           <button id="logoutButton" class="swal2-cancel swal2-styled bg-red-600 text-white px-4 py-2 rounded-full shadow-lg hover:bg-red-700">Logout</button>
                        </div>
                     `,
               showConfirmButton: false,
               didOpen: () => {
                  const reportBugButton = document.getElementById('reportBugButton');
                  const logoutButton = document.getElementById('logoutButton');

                  reportBugButton.addEventListener('click', () => {
               Swal.fire({
                  title: 'Report Bug',
                  html: `
                           <form action="/store-bug-report" method="POST" action="/submit-bug">
                              @csrf
                              <!-- Isi formulir report bug -->
                              <input name="name" value="{{ Auth::user()->name }}" class="text-black w-full h-full focus:outline-none text-sm" id="name" type="text" readonly>
                              <textarea name="description" id="description" class="w-full h-24 p-2 border border-gray-300 rounded-lg mb-4" placeholder="Enter bug description..."></textarea>
                              <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded-full shadow-lg hover:bg-blue-700">Submit</button>
                           </form>

                  `,
                  showConfirmButton: false,
                  showCancelButton: true,
                  cancelButtonText: 'Cancel',
                  didOpen: () => {
                     const submitBugButton = document.getElementById('submitBugButton');
                     submitBugButton.addEventListener('click', () => {
                        const description = document.getElementById('description').value;
                        const user_id = '{{ Auth::user()->id }}'; // Ambil ID pengguna dari Blade template
                        
                        // Send bug report using Axios
                        axios.post('/store-bug-report', {
                           user_id: user_id,
                           description: description
                        })
                        .then(response => {
                           console.log(response.data); // Handle success response
                           Swal.fire('Bug Report Submitted', 'Bug report successfully submitted!', 'success');
                        })
                        .catch(error => {
                           console.error('Error submitting bug report:', error);
                           Swal.fire('Error', 'Failed to submit bug report', 'error');
                        });
                     });
                  }
               });
            });

                  logoutButton.addEventListener('click', () => {
                     // Confirm logout
                     Swal.fire({
                        title: 'Logout Confirmation',
                        text: 'Are you sure you want to logout?',
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes',
                        cancelButtonText: 'No'
                     }).then((result) => {
                        if (result.isConfirmed) {
                           // Logout action
                           window.location.href = '/logout                                                                                                                                                                                                                                                                                                                                     ';
                        }
                     });
                  });
               }
            });
         }
      </script>

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

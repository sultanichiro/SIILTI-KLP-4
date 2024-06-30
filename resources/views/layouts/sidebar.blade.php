<div class="overscroll-contain w-48 bg-gray-900 h-full p-4 fixed top-0 left-0">
    <a href="#" class="flex items-center pb-4 border-b border-b-gray-800">
       <img src="/siilti.jpeg" alt="logo" class="w-8 h-8 rounded mr-2 object-cover"/>
       <span class="text-lg font-bold text-white">SIILTI</span>
    </a>
    <ul class="mt-1">
       @can('view_dashboard')
       <li class="mb-1 group">
          <a href="/overview" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none">
             <i class="ri-dashboard-3-line mr-3 text-lg"></i>
             <span class="text-xs">Dashboard</span>
          </a>
       </li>
       @endcan

       @canany(['view_barang', 'view_barang_masuk', 'view_barang_keluar'])
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('barang-dropdown')">
             <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-3" viewBox="0 0 20 20" fill="currentColor">
                 <path d="M10 12a2 2 0 100-4 2 2 0 000 4z" />
                 <path fill-rule="evenodd" d="M3 5a2 2 0 012-2h10a2 2 0 012 2v10a2 2 0 01-2 2H5a2 2 0 01-2-2V5zm2-1a1 1 0 00-1 1v10a1 1 0 001 1h10a1 1 0 001-1V5a1 1 0 00-1-1H5z" clip-rule="evenodd" />
             </svg>
             <span class="text-xs">Barang</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="barang-dropdown" class="hidden pl-8 mt-1 space-y-1">
             @can('view_barang')
             <li>
                <a href="/barang" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Data Barang</span>
                </a>
             </li>
             @endcan
             @can('view_barang_masuk')
             <li>
                <a href="/barang-masuk" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Barang Masuk</span>
                </a>
             </li>
             @endcan
             @can('view_barang_keluar')
             <li>
                <a href="/barang-keluar" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Barang Keluar</span>
                </a>
             </li>
             @endcan
          </ul>
       </li>
       @endcanany

       @canany(['view_kategori_barang', 'view_supplier', 'view_ruangan'])
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('lainnya-dropdown')">
             <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-3" viewBox="0 0 20 20" fill="currentColor">
                 <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm-1-9V6a1 1 0 112 0v3h3a1 1 0 010 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 010-2h3z" clip-rule="evenodd" />
             </svg>
             <span class="text-xs">Tambahan</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="lainnya-dropdown" class="hidden pl-8 mt-1 space-y-1">
             @can('view_kategori_barang')
             <li>
                <a href="/kategori" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Kategori Barang</span>
                </a>
             </li>
             @endcan
             @can('view_supplier')
             <li>
                <a href="/supplier" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Supplier</span>
                </a>
             </li>
             @endcan
             @can('view_ruangan')
             <li>
                <a href="/ruangan" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Ruangan</span>
                </a>
             </li>
             @endcan
          </ul>
       </li>
       @endcanany

       @canany(['view_kategori_berita', 'view_labor', 'view_report'])
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('information-dropdown')">
             <i class="ri-information-line mr-3 text-lg"></i>
             <span class="text-xs">Informasi</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="information-dropdown" class="hidden pl-8 mt-1 space-y-1">
             @can('view_kategori_berita')
             <li>
                <a href="/barang-masuk" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Berita</span>
                </a>
             </li>
             @endcan
             @can('view_labor')
             <li>
                <a href="/labor" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Labor</span>
                </a>
             </li>
             @endcan
             @can('view_report')
             <li>
                <a href="/bug-reports" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Report</span>
                </a>
             </li>
             @endcan
          </ul>
       </li>
       @endcanany

       @canany(['view_peminjaman', 'view_pengembalian', 'view_riwayat_peminjaman', 'view_input_peminjaman'])
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('transaction-dropdown')">
             <i class="ri-folder-reduce-fill mr-3 text-lg"></i>
             <span class="text-xs">Data Dipakai</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="transaction-dropdown" class="hidden pl-8 mt-1 space-y-1">
             @can('view_peminjaman')
             <li>
                <a href="{{ route('loan_barang') }}" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Peminjaman</span>
                </a>
             </li>
             @endcan
             @can('view_input_peminjaman')
             <li>
                <a href="/input-loan-barang-user" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Peminjaman</span>
                </a>
             </li>
             @endcan
             @can('view_riwayat_peminjaman')
             <li>
                <a href="/riwayat-loan-barang" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Riwayat Peminjaman</span>
                </a>
             </li>
             @endcan
             @can('view_pengembalian')
             <li>
                <a href="{{ route('return_barang') }}" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Pengembalian</span>
                </a>
             </li>
             @endcan
          </ul>
       </li>
       @endcanany

       @role('admin')
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('admin-dropdown')">
             <i class="ri-admin-line mr-3 text-lg"></i>
             <span class="text-xs">Data Role</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="admin-dropdown" class="hidden pl-8 mt-1 space-y-1">
             <li>
                <a href="/admin" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Admin</span>
                </a>
             </li>
             <li>
                <a href="/petugas" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">User</span>
                </a>
             </li>
             <li>
                <a href="/activity" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Aktivitas Login</span>
                </a>
             </li>
          </ul>
       </li>
       @endrole

       @role('admin|pimpinan')
       <li class="mb-1 group">
          <button type="button" class="flex items-center w-full py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg focus:outline-none" onclick="toggleDropdown('user-dropdown')">
             <i class="ri-user-line mr-3 text-lg"></i>
             <span class="text-xs">Data Users</span>
             <i class="ri-arrow-down-s-line ml-auto text-lg"></i>
          </button>
          <ul id="user-dropdown" class="hidden pl-8 mt-1 space-y-1">
             <li>
          <a href="{{ route('dosen') }}" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Dosen/Staff</span>
                </a>
             </li>
             <li>
                <a href="{{ route('mahasiswa') }}" class="flex items-center py-2 px-4 text-gray-300 hover:bg-gray-600 rounded-lg">
                   <span class="text-xs">Mahasiswa</span>
                </a>
             </li>
          </ul>
       </li>
       @endrole
       
    </ul>
 </div>
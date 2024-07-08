<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Dashboard\OverviewController;
use App\Http\Controllers\Dashboard\ProductController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Dashboard\BugReportController;
use App\Http\Controllers\Dashboard\CategoryController;
use App\Http\Controllers\Dashboard\ProductSuppliesController;
use App\Http\Controllers\Dashboard\SupplierController;
use App\Http\Controllers\Dashboard\UserController;
use App\Http\Controllers\Dashboard\TransactionController;
use App\Http\Controllers\Dashboard\ReturnsController;
use App\Http\Controllers\Dashboard\MahasiswaController;
use App\Http\Controllers\Dashboard\DosenController;
use App\Http\Controllers\Dashboard\LandingpageController;
use App\Http\Controllers\Dashboard\RuanganController;
use App\Http\Controllers\Dashboard\LaborController;
use App\Http\Controllers\Dashboard\ActivityUserController;
use App\Http\Controllers\Dashboard\BeritaController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|

*/  
    //Landing Page
    Route::get('/', [LandingpageController::class, 'index']);
    Route::get('/baranghome', [ProductController::class, 'indexhome']);

    //login
    Route::get('/login', [AuthController::class, 'index']);
    Route::post('/login', [AuthController::class, 'login'])->name('login');

    //resetpassword
    Route::get('/forgot-password', [AuthController::class, 'forgot_password'])->name('forgot-password');
    Route::post('/forgot-password', [AuthController::class, 'forgot_password_process'])->name('forgot-password-process');
    Route::get('/validasi-forgot-password/{token}', [AuthController::class, 'validasi_forgot_password'])->name('validasi-forgot-password');
    Route::post('/validasi-forgot-password-act', [AuthController::class, 'validasi_forgot_password_act'])->name('validasi-forgot-password-act');


    //register
    Route::get('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/register-proses', [AuthController::class, 'registerproses'])->name('register-proses');

    Route::middleware('auth')->group(function () 
    {
        // Dashboard
        Route::get('/overview', [OverviewController::class, 'index']);

        // Barang
        Route::get('/barang', [ProductController::class, 'index']);
        Route::get('/barang-pimpinan', [ProductController::class, 'indexPimpinan']);
        Route::post('/mass-validate-products', [ProductController::class, 'massValidate'])->name('mass_validate_products');
        Route::get('/input-barang', [ProductController::class, 'create']);
        Route::delete('/hapus-barang/{id}', [ProductController::class, 'delete']);
        Route::post('/input-barang', [ProductController::class, 'store']);
        Route::get('/ubah-barang/{id}', [ProductController::class, 'edit']);
        Route::post('/ubah-barang/{id}', [ProductController::class, 'update']);
        Route::get('/show_barang/{id}', [ProductController::class, 'show'])->name('products_show');
        Route::get('/products',[ProductController::class,'getAllProducts']);
        Route::get('/excel/products',[ProductController::class,'exportExcel']);
        Route::get('/input-import-products',[ProductController::class,'getImportExcel']);
        Route::post('/import/product',[ProductController::class,'importProduct'])->name('import_excel');
        Route::get('/import_pdf',[ProductController::class,'importPDF'])->name('import_PDF');

        // Supplier
        Route::get('/supplier', [SupplierController::class,'index']);
        Route::delete('/hapus-supplier/{id}', [SupplierController::class, 'delete']);
        Route::get('/input-supplier', [SupplierController::class, 'create']);
        Route::post('/input-supplier', [SupplierController::class, 'store']);
        Route::get('/ubah-supplier/{id}', [SupplierController::class, 'edit']);
        Route::post('/ubah-supplier/{id}', [SupplierController::class, 'update']);
        Route::get('/suppliers',[SupplierController::class,'getAllSuppliers']);

        // Kategori
        Route::get('/kategori', [CategoryController::class, 'index']);
        Route::get('/input-kategori', [CategoryController::class, 'create']);
        Route::post('/input-kategori', [CategoryController::class, 'store']);
        Route::delete('/hapus-kategori/{id}', [CategoryController::class, 'delete']);
        Route::get('/ubah-kategori/{id}', [CategoryController::class, 'edit']);
        Route::post('/ubah-kategori/{id}', [CategoryController::class, 'update']);

        // User
        Route::get('/petugas', [UserController::class, 'officer']);
        Route::delete('/hapus-petugas/{id}', [UserController::class, 'deletePetugas']);
        Route::get('/input-petugas', [UserController::class, 'createOfficer']);
        Route::post('/input-petugas', [UserController::class, 'storeOfficer']);
        Route::get('/ubah-petugas/{id}', [UserController::class, 'editOfficer']);
        Route::post('/ubah-petugas/{id}', [UserController::class, 'updateOfficer']);
        Route::get('/excel/user',[UserController::class,'exportExcel']);
        Route::get('/input-import-petugas', [UserController::class, 'input_importOfficer']);
        Route::post('/import/user', [UserController::class, 'importUser']);

        // Admin
        Route::get('/admin', [UserController::class, 'admin']);
        Route::get('/input-admin', [UserController::class, 'createAdmin']);
        Route::post('/input-admin', [UserController::class, 'storeAdmin']);
        Route::delete('/hapus-admin/{id}', [UserController::class, 'delete']);
        Route::get('/ubah-admin/{id}', [UserController::class, 'editAdmin']);
        Route::post('/ubah-admin/{id}', [UserController::class, 'updateAdmin']);

        // Barang Masuk
        Route::get('/barang-masuk', [ProductSuppliesController::class, 'indexIncome']);
        Route::get('/input-barang-masuk', [ProductSuppliesController::class, 'createIncome']);
        Route::post('/input-barang-masuk', [ProductSuppliesController::class, 'storeIncome']);
        Route::get('/edit-barang-masuk/{id}', [ProductSuppliesController::class, 'editIncome']);
        Route::post('/update-barang-masuk/{id}', [ProductSuppliesController::class, 'updateIncome'])->name('update_masuk');
        Route::delete('/hapus-barang-masuk/{id}', [ProductSuppliesController::class,'deleteProductSupply']);
        Route::get('/import_pdfbm',[ProductSuppliesController::class,'importPDFbm']);

        // Barang Keluar
        Route::get('/barang-keluar', [ProductSuppliesController::class, 'indexOutcome']);
        Route::get('/input-barang-keluar', [ProductSuppliesController::class, 'createOutcome']);
        Route::post('/input-barang-keluar', [ProductSuppliesController::class, 'storeOutcome']);
        Route::delete('/hapus-barang-keluar/{id}', [ProductSuppliesController::class,'deleteProductSupply']);
        Route::get('/edit-barang-keluar/{id}', [ProductSuppliesController::class, 'editOutcome']);
        Route::put('/update-barang-keluar/{id}', [ProductSuppliesController::class, 'updateOutcome'])->name('update_keluar');
        Route::get('/show-barang-keluar/{id}', [ProductSuppliesController::class, 'showProductOutcome'])->name('show-barang-keluar');
        Route::get('/import_pdfbk', [ProductSuppliesController::class, 'importPDFbk'])->name('import_pdf_bk');

        // Peminjaman
        Route::get('/loan-barang', [TransactionController::class, 'indexLoan'])->name('loan_barang');
        Route::get('/input-loan-barang', [TransactionController::class, 'createLoan']);
        Route::post('/store-loan-barang', [TransactionController::class, 'storeLoan']);
        Route::get('/edit-loan-barang/{id}', [TransactionController::class, 'editLoan']);
        Route::put('/update-loan-barang/{id}', [TransactionController::class, 'updateLoan']);
        Route::delete('/hapus-loan-barang/{id}', [TransactionController::class,'deleteLoan'])->name('delete_loan');
  
        // Riwayat Peminjaman User
        Route::get('/riwayat-loan-barang', [TransactionController::class,'RiwayatLoan']);

        // Peminjaman User
        Route::get('/input-loan-barang-user', [TransactionController::class, 'createLoanUser']);
        Route::post('/store-loan-barang-user', [TransactionController::class, 'storeLoanUser']);
        Route::get('/saran-barang-user/{id}', [TransactionController::class, 'saranLoanUser']);
        Route::post('/store-saran-barang-user/{id}', [TransactionController::class, 'storesaranLoanUser']);
        Route::get('/kembalikan-barang/{id}', [TransactionController::class, 'returnItem'])->name('kembalikan.barang');

        
        // Pengembalian
        Route::get('/return-barang', [ReturnsController::class, 'indexReturn'])->name('return_barang');
        Route::get('/input-return-barang', [ReturnsController::class, 'createReturn']);
        Route::post('/store-return-barang', [ReturnsController::class, 'storeReturn'])->name('store_return_barang');
        Route::get('/edit-return-barang/{id}', [ReturnsController::class, 'editReturn']);
        Route::post('/update-return-barang/{id}', [ReturnsController::class, 'updateReturn']);
        Route::delete('/hapus-return-barang/{id}', [ReturnsController::class,'deleteReturn']);
        Route::get('/saran-barang-userp/{Id}', [ReturnsController::class, 'showComments']);

        // Mahasiswa
        Route::get('/mahasiswa', [MahasiswaController::class, 'indexMahasiswa'])->name('mahasiswa');
        Route::get('/input-mahasiswa', [MahasiswaController::class, 'createMahasiswa'])->name('input_mahasiswa');
        Route::post('/store-mahasiswa', [MahasiswaController::class, 'storeMahasiswa'])->name('store_mahasiswa');
        Route::get('/edit-mahasiswa/{id}', [MahasiswaController::class, 'editMahasiswa'])->name('edit_mahasiswa');
        Route::put('/update-mahasiswa/{id}', [MahasiswaController::class, 'updateMahasiswa']);
        Route::get('/show-mahasiswa/{id}', [MahasiswaController::class, 'showMahasiswa'])->name('mahasiswa_show');
        Route::delete('/hapus-mahasiswa/{id}', [MahasiswaController::class,'deleteMahasiswa'])->name('mahasiswa_delete');
        Route::get('/fetch-and-save-mahasiswa', [MahasiswaController::class, 'fetchAndSaveData']);
        Route::get('/excel/mahasiswa',[MahasiswaController::class,'exportExcel']);
        Route::get('/input-import-mahasiswa', [MahasiswaController::class, 'inputImportMahasiswa']);
        Route::post('/import/mahasiswa', [MahasiswaController::class, 'importMahasiswa']);
        Route::delete('/mahasiswa/mass-delete', [MahasiswaController::class, 'massDelete'])->name('mahasiswa_mass_delete');

        // Dosen
        Route::get('/dosen', [DosenController::class, 'indexDosen'])->name('dosen');
        Route::get('/input-dosen', [DosenController::class, 'createDosen'])->name('input_dosen');
        Route::post('/store-dosen', [DosenController::class, 'storeDosen'])->name('store_dosen');
        Route::get('/edit-dosen/{id}', [DosenController::class, 'editDosen']);
        Route::put('/update-dosen/{id}', [DosenController::class, 'updateDosen']); 
        Route::get('/show-dosen/{id}', [DosenController::class, 'showDosen']);
        Route::delete('/hapus-dosen/{id}', [DosenController::class,'deleteDosen']);
        Route::get('/fetch-and-save-dosen', [DosenController::class, 'fetchAndSaveData']);
        Route::delete('/dosen/mass-delete', [DosenController::class, 'massDelete'])->name('dosen_mass_delete');

        // Ruangan
        Route::get('/ruangan', [RuanganController::class, 'indexRuangan'])->name('ruangan');
        Route::get('/input-ruangan', [RuanganController::class, 'createRuangan']);
        Route::post('/store-ruangan', [RuanganController::class, 'storeRuangan']);
        Route::get('/edit-ruangan/{id}', [RuanganController::class, 'editRuangan'])->name('edit_ruangan');
        Route::post('/update-ruangan/{id}', [RuanganController::class, 'updateRuangan']); 
        Route::delete('/hapus-ruangan/{id}', [RuanganController::class,'deleteRuangan']);

        // Labor
        Route::get('/labor', [LaborController::class, 'indexLabor']);
        Route::get('/input-labor', [LaborController::class, 'createLabor']);
        Route::post('/store-labor', [LaborController::class, 'storeLabor']);
        Route::get('/edit-labor/{id}', [LaborController::class, 'editLabor']);
        Route::put('/update-labor/{id}', [LaborController::class, 'updateLabor']); 
        Route::delete('/hapus-labor/{id}', [LaborController::class,'deleteLabor'])->name('labor_delete');

        // Bug Report
        Route::get('/bug-reports', [BugReportController::class, 'index']);
        Route::post('/store-bug-report', [BugReportController::class, 'storeBugReport']);

        // Activity User
        Route::get ('/activity-logs', [ActivityUserController::class, 'index']);

        // Berita
        Route::get('/berita', [BeritaController::class, 'Berita'])->name('berita');
    });
    
    //logout
    Route::get('/logout',[AuthController::class, 'logout']);

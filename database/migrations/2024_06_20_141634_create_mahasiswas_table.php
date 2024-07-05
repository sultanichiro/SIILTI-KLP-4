<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('mahasiswas', function (Blueprint $table) {
            $table->id();
            $table->string('nim')->unique();
            $table->string('name');
            $table->string('kode_jurusan')->nullable();
            $table->string('jurusan')->nullable();
            $table->string('kode_prodi')->nullable();
            $table->string('prodi');
            $table->integer('angkatan');
            $table->string('email')->unique();
            $table->string('no_telp')->nullable(); // Menambahkan field no_telfon (opsional)
            $table->text('alamat')->nullable(); // Menambahkan field alamat (opsional)
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mahasiswas');
    }
};

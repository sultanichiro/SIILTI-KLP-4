<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    use HasFactory;

    protected $fillable = [
        'nim',
        'name',
        'kode_jurusan',
        'jurusan',
        'kode_prodi',
        'prodi',
        'angkatan',
        'email',
        'no_telp',
        'alamat'
    ];
}


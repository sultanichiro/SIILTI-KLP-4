<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    use HasFactory;

    protected $fillable = [
        'nidn',
        'nip',
        'kode_jurusan',
        'jurusan',
        'kode_prodi',
        'prodi',
        'name',
        'gender',
        'email',
        'jabatan',
        'foto',
        'no_telp',
        'alamat'
    ];
}

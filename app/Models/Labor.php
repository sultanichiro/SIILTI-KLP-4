<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Labor extends Model
{
    use HasFactory;

    protected $fillable = [
        'room_id',
        'kegiatan',
        'day',
        'date', 
        'time',
    ];

    public function ruangan()
    {
        return $this->belongsTo(Ruangan::class, 'room_id');
    }
}

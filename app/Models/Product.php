<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';

    protected $fillable = [
        'kode_barang',
        'name',
        'category_id',
        'room_id',
        'stock',
        'price',
        'image',
        'desc',
        'verified'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function transaction()
    {
        return $this->hasMany(Transaction::class);
    }

    public function ruangans()
    {
        return $this->belongsTo(Ruangan::class, 'room_id');
    }
    public function returns()
    {
        return $this->hasMany(Returns::class);
    }
}

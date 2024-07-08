<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Product extends Model
{
    use HasFactory;
    use LogsActivity;

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

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logUnguarded();
        // Chain fluent methods for configuration options
    }

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

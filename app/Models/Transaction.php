<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class Transaction extends Model
{
    use HasFactory;
    use LogsActivity;

    protected $fillable = [
        'user_id',
        'product_id',
        'quantity',
        'tanggal_peminjaman',
        'tanggal_pengembalian',
        'desc',
    ];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logUnguarded();
        // Chain fluent methods for configuration options
    }

    // Relasi ke model User
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    // Relasi ke model Product
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
    
    public function returns()
    {
        return $this->hasMany(Returns::class);
    }
}
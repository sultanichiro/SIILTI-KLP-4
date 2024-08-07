<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductSupplies extends Model
{
    use HasFactory;

    protected $fillable = [
        'product_id',
        'name',
        'user_id',
        'supplier_id',
        'date',
        'quantity',
        'type',
        'desc'
    ];

    public function supplier () {
        return $this->belongsTo(Supplier::class);
    }

    public function user () {
        return $this->belongsTo(User::class);
    }

    public function product () {
        return $this->belongsTo(Product::class);
    }

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductPriceImage extends Model
{
    use HasFactory;

    protected $fillable = [
            'kode_cabang',
            'bar_code',
            'nama_barang',
            'cd_brg',
            'saldo',
            'hrg_0',
            'hrg_1',
            'hrg_2',
            'hrg_3',
            'hrg_4',
            'hrg_5',
            'title',
            'description_1',
            'description_2',
            'description_3',
    ];

}

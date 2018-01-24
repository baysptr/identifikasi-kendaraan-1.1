<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    protected $table = 'kendaraans';
    protected $fillable = ['jenis_kendaraan', 'nopol', 'merk_kendaraan'];
}

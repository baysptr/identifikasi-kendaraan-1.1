<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class History extends Model
{
    protected $table = "histories";
    protected $fillable = ['id_kendaraan', 'nopol', 'tgl_update'];
    
    public function Kendaraan(){
        return $this->belongsToMany("App\Kendaraan");
    }
    
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table = "penggunas";
    protected $fillable = ['nik', 'nama', 'alamat', 'email', 'foto', 'no_telp', 'jenis_kelamin'];
}

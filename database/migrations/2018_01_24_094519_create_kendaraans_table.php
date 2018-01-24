<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKendaraansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kendaraans', function (Blueprint $table) {
            $table->increments('id');
            $table->string("id_pengguna", 4);
            $table->enum("jenis_kendaraan", ["motor", "mobil"]);
            $table->string("nopol", 12);
            $table->string("merk_kendaraan", 45);
            $table->enum("blocked_kendaraan", ["Y", "N"]);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kendaraans');
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePenggunasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penggunas', function (Blueprint $table) {
            $table->increments('id');
            $table->string("nik", 15);
            $table->string("nama", 100);
            $table->string("alamat", 150);
            $table->string("email", 50);
            $table->string("foto", 255)->nullable();
            $table->string("no_telp", 20);
            $table->enum("jenis_kelamin", ["L", "P"]);
            $table->enum("blocked_pengguna", ["Y", "N"]);
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
        Schema::dropIfExists('penggunas');
    }
}

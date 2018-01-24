<?php

use Illuminate\Database\Seeder;
use App\Pengguna;

class PenggunaTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Pengguna::truncate();
        $faker = \Faker\Factory::create();

        Pengguna::create([
                "nik" => "089677271257",
                "nama" => "Bayu Saputra",
                "alamat" => "Jl. Kupang Panjaan III - A, No. 43",
                "email" => "bayu.bayusaputra11@gmail.com",
                "no_telp" => "087853461504",
                "jenis_kelamin" => "L",
                "blocked_pengguna" => "N",
            ]);
        
        for ($i = 1; $i <= 10; $i++) {
            Pengguna::create([
                "nik" => $faker->randomDigitNotNull,
                "nama" => $faker->name,
                "alamat" => $faker->address,
                "email" => $faker->email,
                "no_telp" => $faker->century,
                "jenis_kelamin" => "L",
                "blocked_pengguna" => "N",
            ]);
        }
    }

}

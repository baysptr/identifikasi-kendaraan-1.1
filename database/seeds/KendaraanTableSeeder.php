<?php

use Illuminate\Database\Seeder;
use App\Kendaraan;

class KendaraanTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Kendaraan::truncate();
        $faker = \Faker\Factory::create();

        Kendaraan::create([
            "id_pengguna" => 1,
            "jenis_kendaraan" => "motor",
            "nopol" => "L 6125 QZ",
            "merk_kendaraan" => "Yamaha Z 10",
            "blocked_kendaraan" => "N"
        ]);

        for ($i = 2; $i <= 12; $i++) {
            Kendaraan::create([
                "id_pengguna" => $i,
                "jenis_kendaraan" => "mobil",
                "nopol" => $faker->postcode,
                "merk_kendaraan" => $faker->streetSuffix,
                "blocked_kendaraan" => "N"
            ]);
        }
    }

}

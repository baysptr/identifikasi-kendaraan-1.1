<?php

use Illuminate\Database\Seeder;
use App\History;

class HistoryTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        History::truncate();
        History::create([
            "id_kendaraan" => 1,
            "nopol" => "L 6125 QZ",
            "tgl_update" => date("Y-m-d H:i:s")
        ]);
    }

}

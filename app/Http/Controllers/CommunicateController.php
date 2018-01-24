<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kendaraan;
use App\History;

class CommunicateController extends Controller {

    public function checkNopol(Request $request) {
        $nopol = $request->nopol;
        $resultNopol = Kendaraan::where("nopol", $nopol)->get();

        if ($resultNopol->count() > 0) {
            $dataKendaraan = $resultNopol->first();
            $dataHistory = [
                "id_kendaraan" => $dataKendaraan->id,
                "nopol" => $dataKendaraan->nopol,
                "tgl_update" => date("Y-m-d H:i:s")
            ];
            $resultHistory = History::create($dataHistory);
            if ($resultHistory) {
                return 200;
            } else {
                return 502;
            }
        } else {
            return 500;
        }
    }

}

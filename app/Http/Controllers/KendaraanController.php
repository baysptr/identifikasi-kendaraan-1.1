<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kendaraan;

class KendaraanController extends Controller {

    public function index() {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => Kendaraan::all()), 200);
    }

    public function show(Kendaraan $kendaraan) {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => Kendaraan::where("id_pengguna", $kendaraan->id_pengguna)->first()));
    }

    public function store(Request $request) {
        $kendaraan = Kendaraan::create($request->all());
        $status = $this->retrovitResponse("success", "success", 201, false);

        return response()->json(array("status" => $status, "data" => $kendaraan), 201);
    }

    public function update(Request $request, Kendaraan $kendaraan) {
        $kendaraan->update($request->all());
        $status = $this->retrovitResponse("success", "success", 200, false);

        return response()->json(array("status" => $status, "data" => $kendaraan), 200);
    }

    public function delete(Kendaraan $kendaraan) {
        $kendaraan->delete();
        $status = $this->retrovitResponse("success", "success", 200, false);

        return response()->json(array("status" => $status), 204);
    }

    public function retrovitResponse($type, $message, $code, $error) {
        $data = array(
            "type" => $type,
            "message" => $message,
            "code" => $code,
            "error" => $error
        );
        return $data;
    }

}

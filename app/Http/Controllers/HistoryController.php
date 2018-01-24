<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\History;

class HistoryController extends Controller {

    public function index() {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => History::orderBy("tgl_update", "desc")->get()), 200);
    }

    public function lastUpdate() {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => History::orderBy("tgl_update", "desc")->first()), 200);
    }

    public function show(History $history) {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $history));
    }

    public function store(Request $request) {
        $history = History::create($request->all());
        $status = $this->retrovitResponse("success", "success", 201, false);

        return response()->json(array("status" => $status, "data" => $history), 201);
    }

    public function update(Request $request, History $history) {
        $history->update($request->all());
        $status = $this->retrovitResponse("success", "success", 200, false);

        return response()->json(array("status" => $status, "data" => $history), 200);
    }

    public function delete(History $history) {
        $history->delete();
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

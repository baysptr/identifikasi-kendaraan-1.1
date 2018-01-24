<?php

use Illuminate\Http\Request;

Route::get("pengguna", "PenggunaController@index");
Route::get("pengguna/{pengguna}", "PenggunaController@show");
Route::post("pengguna", "PenggunaController@store");
Route::put("pengguna/{pengguna}", "PenggunaController@update");
Route::delete("pengguna/{pengguna}", "PenggunaController@delete");

Route::get("kendaraan", "KendaraanController@index");
Route::get("kendaraan/{kendaraan}", "KendaraanController@show");
Route::post("kendaraan", "KendaraanController@store");
Route::put("kendaraan/{kendaraan}", "KendaraanController@update");
Route::delete("kendaraan/{kendaraan}", "KendaraanController@delete");

Route::get("history", "HistoryController@index");
Route::get("history/{history}", "HistoryController@show");
Route::post("history", "HistoryController@store");
Route::put("history/{history}", "HistoryController@update");
Route::delete("history/{history}", "HistoryController@delete");
Route::get("lastupdate/history", "HistoryController@lastUpdate");

Route::post("communicate", "CommunicateController@checkNopol");

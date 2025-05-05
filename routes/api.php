<?php

use Illuminate\Support\Facades\Route;
use App\Http\Api\sigmelWSController;
use App\Http\Api\registrarEventoController;
use App\Http\Api\generarEventoController;
use App\Http\Api\sigmel_advance;
use App\Http\Api\consultarEventoController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
/** API REST SIGMEL */
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/sigmel_ws', [sigmelWSController::class, 'endpoint']);
    Route::post('/sigmel_ws/radicar', [registrarEventoController::class, 'registrar']);
    //Route::post('/sigmel_ws/generar_evento', [generarEventoController::class, 'endpoint']);
    //Route::post('/sigmel_ws/advance',[sigmel_advance::class,'registrar']);
});

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EventoCategoriaController;
use App\Http\Controllers\EventoMotivoController;
use App\Http\Controllers\CadEventoController;
use App\Http\Controllers\ColaboradorController;
use App\Http\Controllers\DiscenteController;
use App\Http\Controllers\ResponsavelController;

Route::get('/', function () {
    return view('index');
});

// Route::get('/', function () {
//     return redirect()->route('categoria.index');
// });

Route::get('/eventos', function () {
    return redirect()->route('categoria.index');
});

// Rotas para Categoria de Evento
Route::get('/categoria', [EventoCategoriaController::class, 'index'])->name('categoria.index');
Route::post('/categoria', [EventoCategoriaController::class, 'store'])->name('categoria.store');
Route::put('/categoria/{id}', [EventoCategoriaController::class, 'update'])->name('categoria.update');
Route::delete('/categoria/{id}', [EventoCategoriaController::class, 'destroy'])->name('categoria.destroy');

// Rotas para Motivo de Evento
Route::get('/motivo', [EventoMotivoController::class, 'index'])->name('motivo.index');
Route::post('/motivo', [EventoMotivoController::class, 'store'])->name('motivo.store');
Route::put('/motivo/{id}', [EventoMotivoController::class, 'update'])->name('motivo.update');
Route::delete('/motivo/{id}', [EventoMotivoController::class, 'destroy'])->name('motivo.destroy');

// Rotas para Evento
Route::get('/evento', [CadEventoController::class, 'index'])->name('evento.index');
Route::post('/evento', [CadEventoController::class, 'store'])->name('evento.store');
Route::put('/evento/{id}', [CadEventoController::class, 'update'])->name('evento.update');
Route::delete('/evento/{id}', [CadEventoController::class, 'destroy'])->name('evento.destroy');
Route::post('/eventos/salvar', [CadEventoController::class, 'store'])->name('evento.store'); //Método Store

//Rota Colaborador
Route::get('/colaboradores', [ColaboradorController::class, 'buscar'])->name('colaboradores.buscar');

//Rota Discente
Route::get('/discentes', [DiscenteController::class, 'buscar'])->name('discentes.buscar');

//Rota temporária para ID
Route::get('/eventos/proximo-id', [App\Http\Controllers\CadEventoController::class, 'proximoId']);

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

Route::get('/',[UserController::class, 'index']) -> name('user.index');

Route::get('/cad-eventos', function(){
    return view('cad-eventos');
});

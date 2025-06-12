<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EventoMotivoController extends Controller
{
    //
    public function index(){
        return view('eventos.motivo');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evento;
use App\Models\EventoCategoria;
use App\Models\EventoMotivo;
use App\Models\Discente;
use App\Models\ResponsavelLegal;
use App\Models\Colaborador;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;


class CadEventoController extends Controller
{
    //
    public function index(){
        return view('eventos.cad-evento');
    }
}

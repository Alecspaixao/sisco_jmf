<?php

namespace App\Http\Controllers;

use App\Models\Discente;
use App\Models\ResponsavelLegal;
use App\Models\EventoMotivo;
use Illuminate\Http\Request;

class APIController extends Controller
{
    // Busca discentes pelo nome
    public function discentes(Request $request)
    {
        $search = $request->query('search');    

        return Discente::select('discente_matricula as id', 'discente_nome as nome')
            ->where('discente_nome', 'like', '%' . $search . '%')
            ->get();
    }

    // Busca responsáveis pelo nome
    public function responsaveis(Request $request)
    {
        $search = $request->query('search');    

        return ResponsavelLegal::select('responsavelLegal_id as id', 'responsavelLegal_nome as nome')
            ->where('responsavelLegal_nome', 'like', '%' . $search . '%')
            ->get();
    }

    // Busca motives pelo id da categoria
    public function motives(Request $request)
    {
        $categoriaId = $request->query('categoria');    

        return EventoMotivo::select('eventoMotivo_id as id', 'eventoMotivo_nome as nome')
            ->where('eventoMotivo_idCategoria', $categoriaId)
            ->get();
    }
}

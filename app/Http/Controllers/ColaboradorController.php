<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Colaborador;

class ColaboradorController extends Controller
{
    
    public function buscar(Request $request)
    {
        $termo = $request->get('termo');

        if (!$termo || strlen($termo) < 2) {
            return response()->json([]);
        }

        $colaboradores = Colaborador::where('colaborador_nome', 'like', '%' . $termo . '%')
            ->select('colaborador_matricula', 'colaborador_nome')
            ->limit(10)
            ->get();

        return response()->json($colaboradores);
    }
}

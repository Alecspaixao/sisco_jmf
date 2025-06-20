<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Discente;

class DiscenteController extends Controller
{
    public function buscar(Request $request)
    {
        $termo = $request->get('termo');

        if (!$termo || strlen($termo) < 2) {
            return response()->json([]);
        }

        $discentes = Discente::where('discente_nome', 'like', '%' . $termo . '%')
            ->select('discente_matricula', 'discente_nome')
            ->limit(10)
            ->get();

        return response()->json($discentes);
    }
}


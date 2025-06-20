<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evento;
use App\Models\Colaborador;
use App\Models\Discente;
use App\Models\ResponsavelLegal; // Correto: é esse o model

class CadEventoController extends Controller
{
    public function index()
    {
        $eventos = Evento::all();

        $colaboradores = Colaborador::all(['colaborador_matricula', 'colaborador_nome']);
        $discentes = Discente::all(['discente_matricula', 'discente_nome']);
        $responsaveis = ResponsavelLegal::all(['responsavelLegal_id', 'responsavelLegal_nome']); // Correção aqui

        return view('eventos.cad-evento', compact(
            'eventos', 'discentes', 'colaboradores', 'responsaveis' // Corrigido: faltava 'responsaveis' e estava com vírgula sobrando
        ));
    }

    public function buscarResponsaveis(Request $request)
    {
        $query = $request->get('search');

        $responsaveis = ResponsavelLegal::where('responsavelLegal_nome', 'like', '%' . $query . '%')
            ->select('responsavelLegal_id as id', 'responsavelLegal_nome as nome')
            ->get();

        return response()->json($responsaveis);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'evento_data'          => 'required|date',
            'evento_hora'          => 'required',
            'evento_idColaborador' => 'required|string', // VARCHAR no banco
            'evento_idDiscente'    => 'required|string',
            'evento_idResponsavel' => 'required|integer', // Está como INT mesmo no banco
            'evento_idCategoria'   => 'required|integer',
            'evento_idMotivo'      => 'required|integer',
            'evento_observacao'    => 'nullable|string|max:300',
            'rdn_alerta_ativo'     => 'required|in:0,1',
        ]);

        if ($request->filled('evento_id')) {
            $evento = Evento::findOrFail($request->evento_id);
            $evento->update($validated);

            return redirect()->route('evento.index')->with('success', 'Evento atualizado com sucesso!');
        }

        Evento::create($validated);

        return redirect()->route('evento.index')->with('success', 'Evento cadastrado com sucesso!');
    }

    public function destroy($id)
    {
        $evento = Evento::findOrFail($id);
        $evento->delete();

        return redirect()->route('evento.index')->with('success', 'Evento excluído com sucesso!');
    }
}

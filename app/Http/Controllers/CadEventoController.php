<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Evento;
use App\Models\Colaborador;

class CadEventoController extends Controller
{
    public function index()
    {
        $eventos = Evento::all();
        $colaboradores = Colaborador::all('colaborador_nome'); // ← Aqui
        return view('eventos.cad-evento', compact('eventos'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'evento_data'          => 'required|date',
            'evento_hora'          => 'required',
            'evento_idColaborador' => 'required|integer',
            'evento_idDiscente'    => 'required|integer',
            'evento_idResponsavel' => 'required|integer',
            'evento_idCategoria'   => 'required|integer',
            'evento_idMotivo'      => 'required|integer',
            'evento_observacao'    => 'nullable|string|max:300',
            'rdn_alerta_ativo'     => 'required|in:0,1',
        ]);

        if ($request->filled('evento_id')) {
            // Atualiza
            $evento = Evento::findOrFail($request->evento_id);
            $evento->update($validated);

            return redirect()->route('evento.index')->with('success', 'Evento atualizado com sucesso!');
        }

        // Cria
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

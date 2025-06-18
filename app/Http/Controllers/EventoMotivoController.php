<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EventoMotivo;
use App\Models\EventoCategoria;

class EventoMotivoController extends Controller
{
    public function index()
    {
        // Pegue todos os motives junto às categorias
        $motivos = EventoMotivo::with('categoria')->get();

        // Pegue também todas as categorias para exibir nas options do select
        $categorias = EventoCategoria::all();

        return view('eventos.motivo', compact('motivos', 'categorias'));
    }

    public function store(Request $request)
    {
        if ($request->filled('eventoMotivo_id')) {
            // Atualiza
            $motivo = EventoMotivo::findOrFail($request->eventoMotivo_id);
            $motivo->update($request->only([
                'eventoMotivo_idCategoria',
                'eventoMotivo_nome',
                'eventoMotivo_descricao',
            ]));

            return redirect()->route('motivo.index')->with('success', 'Motivo atualizado com sucesso!');
        }

        // Cria
        EventoMotivo::create($request->only([
            'eventoMotivo_idCategoria',
            'eventoMotivo_nome',
            'eventoMotivo_descricao',
        ]));

        return redirect()->route('motivo.index')->with('success', 'Motivo cadastrado com sucesso!');
    }

    public function destroy($id)
    {
        $motivo = EventoMotivo::findOrFail($id);
        $motivo->delete();

        return redirect()->route('motivo.index')->with('success', 'Motivo excluído com sucesso!');
    }
}

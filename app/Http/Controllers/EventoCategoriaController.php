<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\EventoCategoria;

class EventoCategoriaController extends Controller
{
    public function index()
    {
        $categorias = EventoCategoria::all();
        return view('eventos.categoria', compact('categorias'));
    }

    public function store(Request $request)
    {
        if ($request->filled('eventoCategoria_id')) {
            // Atualiza
            $categoria = EventoCategoria::findOrFail($request->eventoCategoria_id);
            $categoria->update($request->only([
                'eventoCategoria_nome',
                'eventoCategoria_descricao',
                'ocorrenciaCategoria_qtdAlerta',
            ]));

            return redirect()->route('categoria.index')->with('success', 'Categoria atualizada com sucesso!');
        }

        // Cria nova
        EventoCategoria::create($request->only([
            'eventoCategoria_nome',
            'eventoCategoria_descricao',
            'ocorrenciaCategoria_qtdAlerta',
        ]));

        return redirect()->route('categoria.index')->with('success', 'Categoria cadastrada com sucesso!');
    }


    public function update(Request $request, $id)
    {
        $categoria = EventoCategoria::findOrFail($id);
        $categoria->update($request->only([
            'eventoCategoria_nome',
            'eventoCategoria_descricao',
            'ocorrenciaCategoria_qtdAlerta',
        ]));

        return redirect()->route('categoria.index')->with('success', 'Categoria atualizada com sucesso!');
    }

    public function destroy($id)
    {
        $categoria = EventoCategoria::findOrFail($id);
        $categoria->delete();

        return redirect()->route('categoria.index')->with('success', 'Categoria excluída com sucesso!');
    }
}

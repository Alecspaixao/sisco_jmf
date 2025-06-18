@extends('layouts.app')

@section('title', 'Categoria de Evento')

@section('content')
  <form method="POST" id="categoria" class="form" action="{{ route ('categoria.store')}}">
    @csrf
    <input type="hidden" name="eventoCategoria_id" id="eventoCategoria_id">

    <div class="row">
      <div class="column">
        <label for="ocorrenciaCategoria_qtdAlerta">Quantidade para Alerta</label>
        <input type="number" name="ocorrenciaCategoria_qtdAlerta" id="ocorrenciaCategoria_qtdAlerta" 
              min="1" max="10" value="3" required>
      </div>
    </div>

    <div class="column">
      <label for="eventoCategoria_nome">Nome da Categoria</label>
      <input type="text" name="eventoCategoria_nome" id="eventoCategoria_nome" 
            maxlength="50" required>

      <label for="eventoCategoria_descricao">Descrição</label>
      <textarea name="eventoCategoria_descricao" id="eventoCategoria_descricao" 
                maxlength="300"></textarea>
    </div>

    <div class="icon-bar">
      <button type="submit" title="Salvar" name="btn_add_categoriaEvento">💾 Salvar</button>
      <button type="button" title="Limpar" name="btn_limparTela_categoria">🧹</button>
      <button type="submit" title="Atualizar" name="btn_update_categoriaEvento">🔄</button>
      <button type="button" title="Documento" name="btn_listar_categoriaEvento">📄</button>
    </div>
  </form>
  @if(session('success'))
  <div class="alert-success">{{ session('success') }}</div>
@endif

<table class="categoria-tabela">
  <thead>
    <tr>
      <th>ID</th>
      <th>Nome</th>
      <th>Descrição</th>
      <th>Qtd Alerta</th>
      <th>Excluir</th>
      <th>Editar</th>
    </tr>
  </thead>
  <tbody>
  @foreach($categorias as $cat)
  <tr>
    <td>{{ $cat->eventoCategoria_id }}</td>
    <td>{{ $cat->eventoCategoria_nome }}</td>
    <td>{{ $cat->eventoCategoria_descricao }}</td>
    <td>{{ $cat->ocorrenciaCategoria_qtdAlerta }}</td>
    <td>
      <form action="{{ route('categoria.destroy', $cat->eventoCategoria_id) }}" method="POST" onsubmit="return confirm('Deseja realmente excluir esta categoria?')">
        @csrf
        @method('DELETE')
        <button type="submit" title="Excluir" class="delete-btn">🗑️</button>
      </form>
    </td>
    <td>
    <button type="button" class="edit-btn"
      data-id="{{ $cat->eventoCategoria_id }}"
      data-nome="{{ $cat->eventoCategoria_nome }}"
      data-desc="{{ $cat->eventoCategoria_descricao }}"
      data-alerta="{{ $cat->ocorrenciaCategoria_qtdAlerta }}">
      ✏️
    </button>
    </td>
  </tr>
@endforeach

  </tbody>
</table>

@endsection

@extends('layouts.app')

@section('title', 'Gestão Motivos de Evento')

@section('content')
  <form method="POST" id="motivo" class="form">
    @csrf
    <input type="hidden" name="eventoMotivo_id" id="eventoMotivo_id">

    <div class="column">
      <label for="eventoMotivo_idCategoria">Categoria do Evento</label>
      <select name="eventoMotivo_idCategoria" id="eventoMotivo_idCategoria" required>
        <option value="">Selecione a categoria</option>
      </select>

      <label for="eventoMotivo_nome">Motivo</label>
      <input type="text" name="eventoMotivo_nome" id="eventoMotivo_nome" 
             placeholder="Nome do motivo" maxlength="50" required>

      <label for="eventoMotivo_descricao">Descrição</label>
      <textarea name="eventoMotivo_descricao" id="eventoMotivo_descricao" 
                placeholder="Descrição do motivo" maxlength="300"></textarea>
    </div>

    <div class="icon-bar">
      <button type="submit" title="Salvar" name="btn_add_motivoEvento">💾 Salvar</button>
      <button type="button" title="Excluir" name="btn_excluir_motivoEvento">🗑️</button>
      <button type="button" title="Limpar" name="btn_limparTela_motivo">🧹</button>
      <button type="button" title="Atualizar" name="btn_update_motivoEvento">🔄</button>
      <button type="button" title="Documento" name="btn_listar_motivoEvento">📄</button>
    </div>
  </form>
@endsection
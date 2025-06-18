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
        @foreach($categorias as $categoria)
          <option value="{{ $categoria->eventoCategoria_id }}">{{ $categoria->eventoCategoria_nome }}</option>
        @endforeach
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
  @if(session('success'))
    <div class="alert-success">
      {{ session('success') }}
    </div>
  @endif

  <table class="categoria-tabela">
    <thead>
      <tr>
        <th>ID</th>
        <th>Categoria</th>
        <th>Motivo</th>
        <th>Descrição</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody>
      @foreach($motivos as $motivo)
        <tr>
          <td>{{ $motivo->eventoMotivo_id }}</td>
          <td>{{ $motivo->categoria->eventoCategoria_nome ?? '' }}</td>
          <td>{{ $motivo->eventoMotivo_nome }}</td>
          <td>{{ $motivo->eventoMotivo_descricao }}</td>
          <td>
            <button 
              class="edit-motivo"
              data-id="{{ $motivo->eventoMotivo_id }}"
              data-categoria="{{ $motivo->eventoMotivo_idCategoria }}"
              data-nome="{{ $motivo->eventoMotivo_nome }}"
              data-descricao="{{ $motivo->eventoMotivo_descricao }}">✏️</button>

            <form action="{{ route('motivo.destroy',$motivo->eventoMotivo_id) }}"
                  method="POST" 
                  onsubmit="return confirm('Deseja excluir?')">
              @csrf
              @method('DELETE')
              <button type="submit">🗑️</button>
            </form>
          </td>
        </tr>
      @endforeach
    </tbody>
  </table>

<script>
document.querySelectorAll('.edit-motivo').forEach((btn) => {
  btn.addEventListener('click',(e) => {
    document.getElementById('eventoMotivo_id').value = btn.dataset.id;
    document.getElementById('eventoMotivo_idCategoria').value = btn.dataset.categoria;
    document.getElementById('eventoMotivo_nome').value = btn.dataset.nome;
    document.getElementById('eventoMotivo_descricao').value = btn.dataset.descricao;
  });
});
</script>

@endsection
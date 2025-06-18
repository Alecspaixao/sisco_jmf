@extends('layouts.app')

@section('title', 'Cadastro de Evento')
@section('content')
<form method="POST" action="{{ route('evento.store') }}" id="evento" class="form">
    @csrf
    <input type="hidden" name="evento_id" id="evento_id">

    <div class="event-form-content">
      <div class="event-fields">

        <div class="row">
          <input type="text" id="evento_id_display" placeholder="ID" readonly>
          <input type="date" name="evento_data" id="evento_data" required>
          <input type="time" name="evento_hora" id="evento_hora" required>
        </div>

        <div class="column">
            <!-- Campo de busca pelo nome -->
            <input type="search" id="txt_psqColaborador" placeholder="Pesquisar Colaborador" list="listaColaboradores">

            <!-- Lista de sugestões -->
            <datalist id="listaColaboradores"></datalist>

            <!-- Nome preenchido automaticamente após seleção -->
            <input type="text" name="colaborador_nome" id="colaborador_nome" placeholder="Colaborador" readonly>

            <!-- CAMPO HIDDEN com o valor que será salvo no banco -->
            <input type="hidden" name="evento_idColaborador" id="evento_idColaborador">

          <input type="search" name="txt_psqCursista_evento" id="txt_psqCursista_evento" 
                 placeholder="Pesquisar Discente" list="listaDiscentes">
          <datalist id="listaDiscentes"></datalist>

          <input type="text" name="discente_nome" id="discente_nome" 
                 placeholder="Discente" readonly>
          <input type="hidden" name="evento_idDiscente" id="evento_idDiscente">
        </div>

        <div class="row">
          <select name="evento_idResponsavel" id="evento_idResponsavel" required>
            <option value="">Selecione o responsável</option>
            {{-- As opções serão carregadas dinamicamente ou pelo Blade --}}
          </select>
          <button type="button" name="btn_cadResponsavel">➕</button>
        </div>

        <div class="row">
          <select name="evento_idCategoria" id="evento_idCategoria" required>
            <option value="">Selecione a categoria</option>
          </select>
          <button type="button" name="btn_cadCatEvento">➕</button>
        </div>

        <div class="row">
          <select name="evento_idMotivo" id="evento_idMotivo" required>
            <option value="">Selecione o motivo</option>
          </select>
          <button type="button" name="btn_cadMotEvento">➕</button>
        </div>

        <label for="evento_observacao">Observação</label>
        <textarea name="evento_observacao" id="evento_observacao" 
                  placeholder="Observação" maxlength="300"></textarea>

        <div class="icon-bar">
          <button type="submit" title="Salvar" name="btn_add_evento">💾 Salvar</button>
          <button type="button" title="Excluir" name="btn_excluir_evento">🗑️</button>
          <button type="button" title="Limpar" name="btn_limparTela_evento">🧹</button>
          <button type="button" title="Atualizar" name="btn_update_evento">🔄</button>
          <button type="button" title="Documento" name="btn_listar_evento">📄</button>
        </div>
      </div>

      <div class="event-sidebar">
        <div class="photo-placeholder">
          <img id="img_cursista_evento" src="" alt="Foto do discente" style="display: none;">
          <span id="sem-foto">Foto 4x4</span>
        </div>

        <div class="row">
          <p class="alerta-titulo">Alerta Ativo</p>
          <div class="radio-group">
            <label><input type="radio" name="rdn_alerta_ativo" value="1"> Sim</label>
            <label><input type="radio" name="rdn_alerta_ativo" value="0" checked> Não</label>
          </div>
        </div>
      </div>
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
        <th>Colaborador</th>
        <th>Discente</th>
        <th>Categoria</th>
        <th>Motivo</th>
        <th>Data</th>
        <th>Hora</th>
        <th>Ações</th>
      </tr>
    </thead>
    <tbody>
      @foreach($eventos as $evento)
        <tr>
          <td>{{ $evento->evento_id }}</td>
          <td>{{ $evento->colaborador->nome ?? '' }}</td>
          <td>{{ $evento->discente->nome ?? '' }}</td>
          <td>{{ $evento->categoria->eventoCategoria_nome ?? '' }}</td>
          <td>{{ $evento->motivo->eventoMotivo_nome ?? '' }}</td>
          <td>{{ $evento->evento_data }}</td>
          <td>{{ $evento->evento_hora }}</td>
          <td>
            <button 
              class="edit-evento"
              data-id="{{ $evento->evento_id }}"
              data-colaborador="{{ $evento->evento_idColaborador }}"
              data-discente="{{ $evento->evento_idDiscente }}"
              data-categoria="{{ $evento->evento_idCategoria }}"
              data-motivo="{{ $evento->evento_idMotivo }}"
              data-observacao="{{ $evento->evento_observacao }}"
              data-alerta="{{ $evento->rdn_alerta_ativo }}">✏️</button>

            <form action="{{ route('evento.destroy',$evento->evento_id) }}"
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

<script src="{{ asset('js/cad-evento.js') }}"></script>

@endsection

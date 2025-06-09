<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Eventos</title>
  <link rel="stylesheet" href="{{ asset('css/cad-eventos.css') }}">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
  <!-- Sidebar corrigida -->
  <div class="sidebar" id="sidebar">
    <button class="hamburguer" id="hamburguer">&#9776;</button>

    <div class="logo-area">
      <div class="logo-placeholder">
        <img src="{{ asset('img/logo_sisco_jmf.png')}}" alt="Logo - SISCO">
      </div>
    </div>

    <nav class="menu-items">
      <a href="#">SISCO</a>
      <a href="#">Discente</a>
      <a href="#">Responsável Legal</a>
      <a href="#">Colaborador</a>
      <a href="#">Pedagógico</a>
      <a href="#">Configuração</a>
      <a href="#">Ajuda</a>
      <a href="#">Opção</a>
    </nav>
  </div>

  <!-- Conteúdo principal -->
  <div class="content">
    <div class="form-header">
      <div class="form-selector">
        <button class="form-btn active" data-form="categoria">Categoria de Eventos</button>
        <button class="form-btn" data-form="motivo">Gestão Motivos de Eventos</button>
        <button class="form-btn" data-form="evento">Cadastro de Eventos</button>
      </div>
    </div>

    <!-- Formulário Categoria -->
    <form method="POST" id="form-categoria-evento" class="form">
      <input type="hidden" name="eventoCategoria_id" id="eventoCategoria_id">

      <div class="row">
        <label for="ocorrenciaCategoria_qtdAlerta">Qnt. para Alerta</label>
        <input type="number" name="ocorrenciaCategoria_qtdAlerta" id="ocorrenciaCategoria_qtdAlerta" 
              min="1" max="10" value="3" required>
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
        <button type="submit" title="Salvar" name="btn_add_categoriaEvento" >💾 Salvar</button>
        <button type="button" title="Excluir" name="btn_excluir_categoriaEvento">🗑️</button>
        <button type="button" title="Limpar" name="btn_limparTela_categoria">🧹</button>
        <button type="button" title="Atualizar" name="btn_update_categoriaEvento">🔄</button>
        <button type="button" title="Documento" name="btn_listar_categoriaEvento">📄</button>
      </div>
    </form>

    <!-- Formulário Motivo -->
    <form method="POST" id="form-motivo-evento" class="form hidden">
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

    <!-- Formulário Evento -->
    <form method="POST" id="form-cad-evento" class="form hidden">
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
            <input type="text" name="colaborador_nome" id="colaborador_nome" 
                   placeholder="Colaborador" readonly>
            <input type="hidden" name="evento_idColaborador" id="evento_idColaborador">
            
            <input type="search" name="txt_psqCursista_evento" id="txt_psqCursista_evento" 
                   placeholder="Pesquisar Discente" list="listaDiscentes">
            <datalist id="listaDiscentes">
            </datalist>
            
            <input type="text" name="discente_nome" id="discente_nome" 
                   placeholder="Discente" readonly>
            <input type="hidden" name="evento_idDiscente" id="evento_idDiscente">
          </div>

          <div class="row">
            <select name="evento_idResponsavel" id="evento_idResponsavel" required>
              <option value="">Selecione o responsável</option>
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
          <div class="row">
            <p class="alerta-titulo">Alerta Ativo</p>
            <div class="radio-group">
              <label><input type="radio" name="rdn_alerta_ativo" value="1"> Sim</label>
              <label><input type="radio" name="rdn_alerta_ativo" value="0" checked> Não</label>
            </div>
          </div>
          
          <div class="photo-placeholder">
            <img id="img_cursista_evento" src="" alt="Foto do discente" style="display: none;">
            <span id="sem-foto">Foto 4x4</span>
          </div>
        </div>
      </div>
    </form>
  </div>

  <script src="{{ asset('js/cad-eventos.js') }}" defer></script>
</body>
</html>
document.querySelectorAll('.edit-evento').forEach((btn) => {
  btn.addEventListener('click',(e) => {
    document.getElementById('evento_id').value = btn.dataset.id;
    document.getElementById('evento_idColaborador').value = btn.dataset.colaborador;
    document.getElementById('evento_idDiscente').value = btn.dataset.discente;
    document.getElementById('evento_idCategoria').value = btn.dataset.categoria;
    document.getElementById('evento_idMotivo').value = btn.dataset.motivo;
    document.getElementById('evento_observacao').value = btn.dataset.observacao;

    // Marca o radio
    document.querySelectorAll('input[name=rdn_alerta_ativo]').forEach((input) => {
      input.checked = (input.value == btn.dataset.alerta);
    });
  });
});
document.addEventListener('DOMContentLoaded', () => {

  // Busca de Discentes pelo nome
  document.getElementById('txt_psqCursista_evento').addEventListener('input', async function(){
    let query = this.value.trim();

    if (query.length < 3) return;

    try {
      let response = await fetch('/api/discentes?search=' + encodeURIComponent(query));

      let discentes = await response.json();

      let datalist = document.getElementById('listaDiscentes');
      datalist.innerHTML = '';
      discentes.forEach(discente => {
        let option = document.createElement('option');
        option.value = discente.nome;
        option.dataset.id = discente.id;
        datalist.appendChild(option);
      });
    } catch (error) {
      console.error(error);
    }
  });

  // Quando um nome é escolhido
  document.getElementById('txt_psqCursista_evento').addEventListener('change', function(){
    let datalist = document.getElementById('listaDiscentes');
    let option = Array.from(datalist.options).find((item) => item.value == this.value);
    if (option) {
      document.getElementById('evento_idDiscente').value = option.dataset.id;
      document.getElementById('discente_nome').value = option.value;
    }
  });

  // Busca de Responsáveis pelo nome
  document.getElementById('txt_psqResponsavel_evento').addEventListener('input', async function(){
    let query = this.value.trim();

    if (query.length < 3) return;

    try {
      let response = await fetch('/api/responsaveis?search=' + encodeURIComponent(query));

      let responsaveis = await response.json();

      let datalist = document.getElementById('listaResponsaveis');
      datalist.innerHTML = '';
      responsaveis.forEach(responsavel => {
        let option = document.createElement('option');
        option.value = responsavel.nome;
        option.dataset.id = responsavel.id;
        datalist.appendChild(option);
      });
    } catch (error) {
      console.error(error);
    }
  });

  // Quando um nome é escolhido
  document.getElementById('txt_psqResponsavel_evento').addEventListener('change', function(){
    let datalist = document.getElementById('listaResponsaveis');
    let option = Array.from(datalist.options).find((item) => item.value == this.value);
    if (option) {
      document.getElementById('evento_idResponsavelLegal').value = option.dataset.id;
      document.getElementById('responsavel_name').value = option.value;
    }
  });

  // Carregar Motivos de acordo com a Categoria
  document.getElementById('evento_idCategoria').addEventListener('change', async function(){
    let categoriaId = this.value;

    if (categoriaId) {
      try {
        let response = await fetch('/api/motivos?categoria=' + encodeURIComponent(categoriaId));

        let motives = await response.json();

        let select = document.getElementById('evento_idMotivo');
        select.innerHTML ='<option value="">Selecione o motivo</option>';
        motives.forEach(motivo => {
          let option = document.createElement('option');
          option.value = motivo.id;
          option.text = motivo.nome;
          select.appendChild(option);
        });
      } catch (error) {
        console.error(error);
      }
    }
  });

});

document.addEventListener('DOMContentLoaded', function () {
  const input = document.getElementById('colaborador_nome');
  const lista = document.getElementById('listaColaboradores');
  const hiddenId = document.getElementById('evento_idColaborador');

  input.addEventListener('input', function () {
    const termo = this.value;

    if (termo.length < 2) {
      lista.innerHTML = '';
      return;
    }

    fetch(`/colaboradores?termo=${encodeURIComponent(termo)}`)
      .then(response => response.json())
      .then(data => {
        lista.innerHTML = '';
        data.forEach(colab => {
          const item = document.createElement('li');
          item.textContent = colab.nome;
          item.dataset.id = colab.id;

          item.addEventListener('click', function () {
            input.value = colab.nome;
            hiddenId.value = colab.id;
            lista.innerHTML = '';
          });

          lista.appendChild(item);
        });
      });
  });
});

document.getElementById('txt_psqColaborador').addEventListener('input', async function () {
  let query = this.value.trim();

  if (query.length < 2) return;

  try {
    let response = await fetch('/colaboradores?termo=' + encodeURIComponent(query));
    let colaboradores = await response.json();

    let datalist = document.getElementById('listaColaboradores');
    datalist.innerHTML = '';

    colaboradores.forEach(colab => {
      let option = document.createElement('option');
      option.value = colab.colaborador_nome; // mostrado no input
      option.dataset.id = colab.colaborador_matricula; // ID real do banco
      datalist.appendChild(option);
    });

  } catch (error) {
    console.error('Erro ao buscar colaboradores:', error);
  }
});

document.getElementById('txt_psqColaborador').addEventListener('change', function () {
  let datalist = document.getElementById('listaColaboradores');
  let option = Array.from(datalist.options).find(opt => opt.value === this.value);

  if (option) {
    document.getElementById('colaborador_nome').value = option.value;
    document.getElementById('evento_idColaborador').value = option.dataset.id;
  }
});

document.addEventListener('DOMContentLoaded', function () {
  const inputFiltro = document.getElementById('filtro_colaborador');
  const select = document.getElementById('select_colaborador');
  const inputNome = document.getElementById('colaborador_nome');
  const inputId = document.getElementById('evento_idColaborador');

  // Filtra as opções no select
  inputFiltro.addEventListener('input', function () {
    const termo = this.value.toLowerCase();

    Array.from(select.options).forEach(option => {
      const texto = option.text.toLowerCase();
      option.style.display = texto.includes(termo) ? 'block' : 'none';
    });
  });

  // Ao selecionar um colaborador
  select.addEventListener('change', function () {
    const selected = this.options[this.selectedIndex];
    inputNome.value = selected.text;
    inputId.value = selected.value;
  });
});
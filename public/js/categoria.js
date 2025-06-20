document.addEventListener('DOMContentLoaded', function () {
  const form = document.getElementById('categoria');

  // Botão de editar: preenche o formulário
  document.querySelectorAll('.edit-btn').forEach(btn => {
    btn.addEventListener('click', function () {
      document.getElementById('eventoCategoria_id').value = this.dataset.id;
      document.getElementById('eventoCategoria_nome').value = this.dataset.nome;
      document.getElementById('eventoCategoria_descricao').value = this.dataset.desc;
      document.getElementById('ocorrenciaCategoria_qtdAlerta').value = this.dataset.alerta;
    });
  });

  // Botão de limpar: limpa todos os campos
  document.querySelector('[name="btn_limparTela_categoria"]').addEventListener('click', function () {
    form.reset();
    document.getElementById('eventoCategoria_id').value = '';
  });

  // Botão de atualizar: força envio com ID preenchido
  document.querySelector('[name="btn_update_categoriaEvento"]').addEventListener('click', function () {
    if (!document.getElementById('eventoCategoria_id').value) {
      alert('Selecione uma categoria para atualizar.');
      return;
    }

    form.action = "{{ route('categoria.store') }}";
    form.submit();
  });

  // Botão de documento/listar
  document.querySelector('[name="btn_listar_categoriaEvento"]').addEventListener('click', function () {
    alert('Funcionalidade de geração de documento ainda não implementada.');
    // Você pode redirecionar, gerar PDF etc.
  });
});

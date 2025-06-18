document.addEventListener('DOMContentLoaded', () => {
  const limparBtn = document.querySelector('[name="btn_limparTela_categoria"]');
  const form = document.getElementById('categoria');

  if (limparBtn && form) {
    limparBtn.addEventListener('click', () => {
      form.reset();
      form.querySelector('[name="eventoCategoria_id"]').value = ''; // zera o ID oculto
    });
  }
});
document.querySelectorAll('.edit-btn').forEach(button => {
  button.addEventListener('click', () => {
    document.getElementById('eventoCategoria_id').value = button.dataset.id;
    document.getElementById('eventoCategoria_nome').value = button.dataset.nome;
    document.getElementById('eventoCategoria_descricao').value = button.dataset.desc;
    document.getElementById('ocorrenciaCategoria_qtdAlerta').value = button.dataset.alerta;
  });
});
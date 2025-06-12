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

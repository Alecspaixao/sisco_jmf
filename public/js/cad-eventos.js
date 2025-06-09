document.addEventListener("DOMContentLoaded", function () {
  // -------------------------------
  // Sidebar toggle
  // -------------------------------
  const hamburger = document.getElementById("hamburguer");

  hamburger.addEventListener("click", () => {
    sidebar.classList.toggle("expanded");
  });

  // -------------------------------
  // Alternar entre formulários
  // -------------------------------
  const formButtons = document.querySelectorAll(".form-btn");
  const forms = document.querySelectorAll(".form");

  formButtons.forEach(button => {
    button.addEventListener("click", () => {
      // Remove classe 'active' de todos os botões
      formButtons.forEach(btn => btn.classList.remove("active"));

      // Adiciona classe 'active' ao botão clicado
      button.classList.add("active");

      // Oculta todos os formulários
      forms.forEach(form => form.classList.add("hidden"));

      // Exibe o formulário selecionado
      const targetFormId = button.getAttribute("data-form");
      const targetForm = document.getElementById(targetFormId);
      if (targetForm) {
        targetForm.classList.remove("hidden");
      }
    });
  });
});
const img = document.getElementById('img_cursista_evento');
img.onload = () => {
  img.style.display = 'block';
  document.getElementById('sem-foto').style.display = 'none';
};

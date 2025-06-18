<div class="sidebar" id="sidebar">
    <button class="hamburguer" id="hamburguer">&#9776;</button>

    <div class="logo-area">
        <div class="logo-placeholder">
        <img src="{{ asset('img/logo_sisco_jmf.png') }}" alt="Logo - SISCO">
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

<style>
/* ========================================= */
/* 3. Navegação da Barra Lateral (Sidebar) */
/* ========================================= */
.sidebar {
  width: 60px; /* Largura quando colapsada */
  background-color: #1d1c21;
  color: white;
  overflow: hidden; /* Oculta o conteúdo que excede os limites da barra lateral */
  transition: width 0.3s ease; /* Transição suave para mudanças de largura */
  height: 100vh; /* Ocupa 100% da altura da viewport */
  display: flex;
  flex-direction: column; /* Define os itens principais da sidebar em coluna */
  flex-shrink: 0; /* Impede que a barra lateral encolha */
  position: fixed; /* Mantém a barra lateral fixa na tela durante a rolagem */
  z-index: 100; /* Garante que a barra lateral fique acima de outros elementos */
  padding-top: 60px; /* Espaço para o botão hambúrguer */
}

.sidebar.expanded {
  width: 220px; /* Largura quando expandida */
}
.horizontal-menu {
  width: 100%;
  background-color: #ff9900; /* ou a cor que quiser */
  color: #fff;
  padding: 15px 20px;
  box-sizing: border-box;
  display: flex;
  align-items: center;
  gap: 20px;
}

/* Se quiser que os botões também se distribuam automaticamente: */
.horizontal-menu a {
  color: #fff;
  text-decoration: none;
  padding: 10px 15px;
  border-radius: 5px;
  transition: background 0.3s ease;
}

.horizontal-menu a:hover {
  background: #ffcc80;
}


/* ========================================= */
/* 4. Botão Hambúrguer */
/* ========================================= */
.hamburguer {
  position: absolute; /* Posição absoluta em relação à sidebar */
  top: 20px; /* Distância do topo */
  left: 20px; /* Distância da esquerda */
  z-index: 101; /* Garante que fique acima de outros elementos */
  background: none;
  border: none;
  font-size: 26px;
  color: #ffffff;
  cursor: pointer;
  padding: 0; /* Remove padding padrão para alinhamento preciso */
  transition: all 0.3s ease; /* Adiciona transição suave para movimento se houver */
}

/* ========================================= */
/* Itens da Sidebar (Logo e Menu) */
/* ========================================= */
.logo-area {
  height: 80px;
  display: flex; /* Mantém flex para centralizar o logo */
  align-items: center;
  justify-content: center;
  padding: 10px;
  width: 100%; /* Garante que ocupe a largura total */
  opacity: 0; /* Começa oculto */
  pointer-events: none; /* Impede cliques quando oculto */
  transition: opacity 0.3s ease, transform 0.3s ease; /* Adiciona transição para transform */
  transform: translateX(-20px); /* Começa ligeiramente para a esquerda */
}

.sidebar.expanded .logo-area {
  opacity: 1; /* Mostra a área do logo quando a barra lateral é expandida */
  pointer-events: auto;
  transform: translateX(0); /* Volta para a posição normal */
}

.logo-placeholder > img{
max-width: 150px;  
}

.menu-items {
  display: flex; /* Mantém como flex para controle dos itens */
  flex-direction: column; /* Garante que os itens fiquem em coluna */
  padding: 20px 10px;
  width: 100%;
  flex-grow: 1; /* Permite que os itens do menu ocupem o espaço restante */
  opacity: 0; /* Começa oculto */
  pointer-events: none; /* Impede cliques quando oculto */
  transition: opacity 0.3s ease, transform 0.3s ease; /* Adiciona transição para transform */
  transform: translateX(-20px); /* Começa ligeiramente para a esquerda */
}

.sidebar.expanded .menu-items {
  opacity: 1; /* Mostra os itens do menu quando a barra lateral é expandida */
  pointer-events: auto;
  transform: translateX(0); /* Volta para a posição normal */
}

.menu-items a {
  color: white;
  text-decoration: none;
  padding: 10px 15px;
  margin: 4px 0;
  border-radius: 5px;
  transition: background 0.2s; /* Transição suave do fundo ao passar o mouse */
  display: block; /* Faz com que os links ocupem a largura total disponível */
}

.menu-items a:hover {
  background-color: #333;
}

/* ========================================= */
/* 5. Área de Conteúdo Principal */
/* ========================================= */
.content {
  padding: 20px 40px;
  /* Ajusta a margem esquerda com base no estado da barra lateral via JavaScript para coerência */
  transition: margin-left 0.3s ease;
  width: 100%; /* Garante que o conteúdo ocupe a largura disponível */
  margin-left: 60px; /* Margem inicial para a barra lateral colapsada */
}

/* Esta classe será adicionada pelo JavaScript quando a barra lateral expandir */
/* LEMBRE-SE DE ADICIONAR "document.body.classList.toggle('sidebar-expanded');" NO SEU JAVASCRIPT! */
body.sidebar-expanded .content {
    margin-left: 220px; 
    overflow: hidden;
}

/* ========================================= */
/* 14. Ajustes Responsivos */
/* ========================================= */
@media (max-width: 768px) {
  /* Barra Lateral: Garante que o conteúdo não se sobreponha quando expandido */
  .sidebar {
    position: absolute; /* Sobrepõe o conteúdo */
    height: 100%;
    z-index: 200;
  }

  body.sidebar-expanded .content {
    margin-left: 0; /* Remove a margem lateral */
  }

  /* Ajusta o layout do formulário em telas menores */
  .event-form-content {
    flex-direction: column; /* Empilha os elementos verticalmente */
    gap: 20px;
  }

  .photo-placeholder {
    width: 100%; /* Ocupa a largura disponível */
    height: auto; /* Altura ajustável */
  }

  .form-header .form-selector {
    flex-direction: column;
    gap: 10px;
  }

  .icon-bar {
    justify-content: center;
    flex-wrap: wrap; /* Permite quebra de linha dos ícones */
  }

  /* Marcador de Posição da Foto: Ajusta o tamanho para celular */
  .photo-placeholder {
    width: 100px;
    height: 130px;
  }

  /* Barra Lateral do Evento: Empilha novamente para telas muito pequenas, se necessário, ou se a linha ficar muito larga */
  .event-sidebar {
    flex-direction: column;
    align-items: center;
  }

  /* Grupo de Rádios: Ajusta o espaçamento para celular */
  .radio-group { /* Alterado de .checkbox-group */
    gap: 20px;
  }
}
</style>

<Script>
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

//Img
const img = document.getElementById('img_cursista_evento');
img.onload = () => {
  img.style.display = 'block';
  document.getElementById('sem-foto').style.display = 'none';
};

</Script>

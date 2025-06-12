<div class="horizontal-menu">
  <a href="{{ route('categoria.index') }}" class="{{ request()->routeIs('categoria.index') ? 'active' : '' }}">Categoria de Evento</a>
  <a href="{{ route('motivo.index') }}" class="{{ request()->routeIs('motivo.index') ? 'active' : '' }}">Gestão Motivos do Evento</a>
  <a href="{{ route('evento.index') }}" class="{{ request()->routeIs('evento.index') ? 'active' : '' }}">Cadastro de Evento</a>
</div>

<style>
.horizontal-menu {
  display: flex;
  justify-content: center; /* Centraliza o grupo */
  gap: 20px; /* Espaçamento igual */
  padding: 15px 0;
  background: #000000;
  border-bottom: 1px solid #ccc;
  margin-left: 60px;
  transition: margin-left 0.3s ease;
}

.sidebar.expanded ~ .horizontal-menu {
  margin-left: 220px;
}

.horizontal-menu a {
  padding: 8px 16px;
  background-color: orange;
  color: white;
  text-decoration: none;
  border-radius: 6px;
  font-weight: bold;
  opacity: 0.6;
  transition: all 0.3s ease;
}

.horizontal-menu a.active,
.horizontal-menu a:hover {
  opacity: 1;
  background-color: #ff8800;
}
</style>

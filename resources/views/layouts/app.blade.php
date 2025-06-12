<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>@yield('title', 'SISCO')</title>

  <!-- Aqui você pode colocar seu CSS principal -->
  <link rel="stylesheet" href="{{ asset('css/app.css') }}">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  @stack('styles')
</head>
<body>

    {{-- Sidebar fixa (componente Blade) --}}
    @include('components.sidebar')

    {{-- Agrupar o menu + conteúdo para mover junto com sidebar --}}
        <div class="main-wrapper">
            @include('components.horizontal-menu')

            <main class="content">
                @yield('content')
            </main>
        </div>

    <script src="{{ asset('js/app.js') }}"></script>
    @stack('scripts')
</body>
</html>

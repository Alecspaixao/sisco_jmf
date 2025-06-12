<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Sidebar extends Component
{
    public $activeLink; // Propriedade que virá do atributo 'active-link'

    public function __construct($activeLink = '') // Construtor recebe o valor do atributo
    {
        $this->activeLink = $activeLink;
    }

    public function render()
    {
        return view('components.sidebar'); // Aponta para a view Blade
    }
}
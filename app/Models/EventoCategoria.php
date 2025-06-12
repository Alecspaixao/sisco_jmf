<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventoCategoria extends Model
{
    protected $table = 'tb_sisco_eventocategoria';

    protected $primaryKey = 'eventoCategoria_id';

    public $timestamps = false; // Se sua tabela não tiver created_at / updated_at

    protected $fillable = [
        'eventoCategoria_nome',
        'ocorrenciaCategoria_qtdAlerta',
        'eventoCategoria_descricao',

    ];
}

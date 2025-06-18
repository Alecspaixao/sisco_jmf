<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Evento extends Model
{
    protected $table = 'tb_sisco_evento';
    protected $primaryKey = 'evento_id';
    public $timestamps = false;

    protected $fillable = [
        'evento_idColaborador',
        'evento_idDiscente',
        'evento_idResponsavel',
        'evento_idCategoria',
        'evento_idMotivo',
        'evento_data',
        'evento_hora',
        'evento_observacao',
        'rdn_alerta_ativo',
    ];

    // Relações opcionais
    public function categoria()
    {
        return $this->belongsTo(EventoCategoria::class, 'evento_idCategoria', 'eventoCategoria_id');
    }

    public function motivo()
    {
        return $this->belongsTo(EventoMotivo::class, 'evento_idMotivo', 'eventoMotivo_id');
    }
}

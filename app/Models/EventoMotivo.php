<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EventoMotivo extends Model
{
    protected $table = 'tb_sisco_eventomotivo';
    protected $primaryKey = 'eventoMotivo_id';
    public $timestamps = false;

    protected $fillable = [
        'eventoMotivo_idCategoria',
        'eventoMotivo_nome',
        'eventoMotivo_descricao',
    ];

    // Relação opcional
    public function categoria()
    {
        return $this->belongsTo(EventoCategoria::class, 'eventoMotivo_idCategoria', 'eventoCategoria_id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ResponsavelLegal extends Model
{
    protected $table = 'tb_jmf_responsavellegal';
    protected $primaryKey = 'responsavelLegal_id';
    public $timestamps = false;

    protected $fillable = [
        'responsavelLegal_nome',
        // Adicione outros campos conforme necessário
    ];
}


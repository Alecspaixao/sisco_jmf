<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Colaborador extends Model
{
    protected $table = 'tb_jmf_colaborador';
    protected $primaryKey = 'colaborador_matricula';
    public $incrementing = false; // porque a chave é varchar
    protected $keyType = 'string';

    protected $fillable = ['colaborador_matricula', 'colaborador_nome'];

    public function colaborador()
    {
        return $this->belongsTo(Colaborador::class, 'evento_idColaborador', 'colaborador_matricula');
    }

}

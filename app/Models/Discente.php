<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Discente extends Model
{
    protected $table = 'tb_jmf_discente';
    protected $primaryKey = 'discente_matricula';
    public $incrementing = false;
    protected $keyType = 'string';

    protected $fillable = ['discente_matricula', 'discente_nome'];
}

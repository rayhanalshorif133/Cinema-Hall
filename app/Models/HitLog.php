<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HitLog extends Model
{
    use HasFactory;

    
    protected $connection = 'mysql2';
    
    
    protected $table = 'hit_logs';


    protected $fillable = [
        'msisdn',
        'opr',
        'browser',
        'user_agent',
        'device_os',
        'brand',
        'model',
        'width',
        'height',
        'ip',
        'd_date',
        'd_time',
    ];
}

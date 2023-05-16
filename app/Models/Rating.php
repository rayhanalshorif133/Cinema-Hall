<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rating extends Model
{
    use HasFactory;

    
    protected $connection = 'mysql2';
    protected $table = 'ratings';
    protected $fillable = ['key_id', 'content_id','rating'];
}

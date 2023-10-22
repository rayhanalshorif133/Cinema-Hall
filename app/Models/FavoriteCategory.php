<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FavoriteCategory extends Model
{
    use HasFactory;

    protected $connection = 'mysql2';
    protected $table = 'favorite_categories';
    protected $fillable = ['id','key_id', 'category_id'];

}

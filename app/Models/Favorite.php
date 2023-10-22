<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    protected $connection = 'mysql2';
    protected $table = 'favorites';
    protected $fillable = ['id','key_id', 'content_ids'];


    public function get_content_ids($content_ids)
    {
        if(gettype($content_ids) == "string"){
            $content_ids = json_decode($content_ids);
        }
        return $content_ids;
    }
}

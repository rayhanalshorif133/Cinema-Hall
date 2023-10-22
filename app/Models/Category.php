<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;


    protected $table = 'b2m_cms_category';


    protected $fillable = [
        'id',
        'type_id',
        'language',
        'parent_id',
        'cat_name',
        'image',
        'created',
        'modified_date',
        'created_by',
        'status',
        'type',
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    use HasFactory;

    


    protected $table = 'b2m_cms_content';

    protected $fillable = [
        'id',
        'cat_id',
        'sub_cat_id',
        'title',
        'short_des',
        'apk_path',
        'description',
        'artist_name',
        'owner',
        'type',
        'price',
        'phone_set',
        'content_type',
        'file_name',
        'prv1_file_name',
        'prv2_file_name',
        'details1_file_name',
        'details2_file_name',
        'con1_file_name',
        'con2_file_name',
        'file_size',
        'location',
        'insert_date',
        'update_date',
        'approve_date',
        'created_by',
        'mapping_status',
        'projects',
        'status',
        'owner_status',
    ];
}

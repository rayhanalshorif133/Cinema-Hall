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


    // updated_at and created_at are not needed
    public $timestamps = false;



    // Image Return function
    public function img($content_id)
    {
        $image_url = "";
        $base_url = "http://b2mcms.b2mwap.com/upload/content/Video/";
        $cat_name = "";

        $content = Content::select('id','cat_id','sub_cat_id','prv1_file_name','prv2_file_name','details1_file_name','details2_file_name')
            ->where('id',$content_id)->first();
        if($content->prv1_file_name){
            $prv_name = $content->prv1_file_name;
        }else if($content->prv2_file_name){
            $prv_name = $content->prv2_file_name;
        }else if ($content->details1_file_name){
            $prv_name = $content->details1_file_name;
        }else if ($content->details2_file_name){
            $prv_name = $content->details2_file_name;
        }else{
            $prv_name = "no_image.png";
        }

        $category_name = Category::select('cat_name')->where('id',$content->cat_id)->first();

        if($category_name){
            $cat_name = $category_name->cat_name;
            $cat_name = str_replace(' ', '_', $cat_name);
            $image_url = $base_url . $cat_name . '/' . $prv_name;
        }        
        return $image_url;
    }

    public function video($content_id){
        $video_url = "";
        $base_url = "http://b2mcms.b2mwap.com/upload/content/Video/";
        $cat_name = "";
        $content = Content::select('id','cat_id','sub_cat_id','con1_file_name','con2_file_name')
        ->where('id',$content_id)->first();
        if($content->con1_file_name){
            $con_file_name = $content->con1_file_name;
        }else if($content->prv2_file_name){
            $con_file_name = $content->prv2_file_name;
        }else{
            $con_file_name = "none";
        }

        $category_name = Category::select('cat_name')->where('id',$content->cat_id)->first();

        if($category_name){
            $cat_name = $category_name->cat_name;
            $cat_name = str_replace(' ', '_', $cat_name);
            $video_url = $base_url . $cat_name . '/' . $con_file_name;
        }
        return $video_url;
    }
}

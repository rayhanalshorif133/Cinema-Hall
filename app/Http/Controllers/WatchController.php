<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class WatchController extends Controller
{
    public function index($content_id = null)
    {

        if($content_id){
            $content = Content::find($content_id);
            $findCategory = Category::find($content->cat_id);            

            $_NEED = ['id',
                'title', 
                'description', 
                'prv1_file_name',
                'prv2_file_name',
                'details1_file_name',
                'details2_file_name'];

            $content->relatedContents = Content::select($_NEED)
                ->where('cat_id', $findCategory->id)
                ->where('sub_cat_id', $content->sub_cat_id)
                ->where('id', '!=', $content->id)
                ->orderBy('id', 'desc')
                ->get();
            $cat_name = str_replace(' ', '-', strtolower($findCategory->cat_name));
            $content->cat_name = $cat_name;

            return view('public.watch.index', compact('content'));
        }
        
    }

    public function watchPlay($content_id){
        if($content_id){
            $content = Content::find($content_id);
            $findCategory = Category::find($content->cat_id);            

            $_NEED = ['id',
                'title', 
                'description', 
                'prv1_file_name',
                'prv2_file_name',
                'details1_file_name',
                'details2_file_name'];

            $content->relatedContents = Content::select($_NEED)
                ->where('cat_id', $findCategory->id)
                ->where('sub_cat_id', $content->sub_cat_id)
                ->where('id', '!=', $content->id)
                ->orderBy('id', 'desc')
                ->get();
            $cat_name = str_replace(' ', '-', strtolower($findCategory->cat_name));
            $content->cat_name = $cat_name;
            return view('public.watch.play', compact('content'));

        }
    }
}

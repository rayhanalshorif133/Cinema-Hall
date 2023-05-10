<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories = $this->category_info();
        return view('home', compact('categories'));
    }


    public function category_info()
    {



        $categories = Category::where('parent_id', 0)
        ->where('type_id', 4)
        ->where('status', 'published')
        ->where('type', 'video')
        ->orderBy('language', 'asc')
        ->get();

        foreach ($categories as $key => $item) {
            $contents = Content::select('id','title', 'description')
            ->where('cat_id', $item->id)
            ->where('status', 'published')
            ->orderBy('id', 'desc')
            ->limit(5)
            ->get();
            if($contents->count() > 0){
                $categories[$key]->contents = $contents;
            }
            $item->tag = str_replace(' ', '', $item->cat_name);
        }

        return $categories;
    }
}

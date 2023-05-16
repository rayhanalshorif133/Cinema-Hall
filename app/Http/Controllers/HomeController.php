<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use App\Models\Favorite;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $favorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")  
        ->first();
        $categories = $this->category_info();
        $favoriteContents = "";
        if($favorite){
            $contentIds = $favorite->get_content_ids($favorite->content_ids);
            $favoriteContents = Content::select('id', 'title', 'description')->whereIn('id', $contentIds)->get();           
        }
        if( $favoriteContents == ""){
            $favoriteContents = [];
        }
        return view('home', compact('categories', 'favoriteContents'));
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
            $contents = Content::select('id', 'title', 'description')
                ->where('cat_id', $item->id)
                ->where('type', 'video')
                ->orderBy('id', 'desc')
                ->limit(5)
                ->get();
            if ($contents->count() > 0) {
                $favorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")->first();
                $contentIds = $favorite ? $favorite->get_content_ids($favorite->content_ids) : [];
                foreach ($contents as $content) {
                    if (in_array($content->id, $contentIds)) {
                        $content->is_favorite = true;
                    } else {
                        $content->is_favorite = false;
                    }
                }
                $categories[$key]->contents = $contents;
            }else{
                $categories[$key]->contents = [];
            }
            $item->tag = str_replace(' ', '', $item->cat_name);
        }

        return $categories;
    }

}

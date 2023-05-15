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
        // $this->test();
        $favorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")  
        ->first();


        $categories = $this->category_info();
        $favoriteContents = "";


        // type of
        
        if($favorite){
            $contentIds = $favorite->get_content_ids($favorite->content_ids);
            $favoriteContents = Content::select('id', 'title', 'description')->whereIn('id', $contentIds)->get();           
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
                ->where('status', 'published')
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
            }
            $item->tag = str_replace(' ', '', $item->cat_name);
        }

        return $categories;
    }



    public function test()
    {
        $cont_id = "453";

        $findFavorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")->first();

        if(!$findFavorite){
            $favorite = new Favorite();
            $favorite->key_id = $this->get_msisdn() ? $this->get_msisdn() : "0";
            $favorite->content_ids = json_encode($cont_id);
            $favorite->save();
            dd('new test',$favorite);
        }else{
            // update content_ids
            $updateFavorite = $findFavorite ? json_decode($findFavorite->content_ids) : [];

            // $updateFavorite to array
            $updateFavorite = (array) $updateFavorite;

            // check content_id is exist or not
            if(!in_array($cont_id, $updateFavorite)){
                array_push($updateFavorite, $cont_id);
            }





        }

    }
}

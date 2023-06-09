<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class WatchController extends Controller
{
    public function index($content_id = null)
    {

        if ($content_id) {
            $content = $this->watchContentInfo($content_id);

            return view('public.watch.index', compact('content'));
        }
    }

    public function watchPlay($content_id)
    {
        if ($content_id) {
            $content = $this->watchContentInfo($content_id);
            return view('public.watch.play', compact('content'));
        }
    }


    public function watchContentInfo($content_id)
    {
        if ($content_id) {
            $content = Content::find($content_id);
            $findCategory = Category::find($content->cat_id);

            $_NEED = [
                'id',
                'title',
                'description',
                'prv1_file_name',
                'prv2_file_name',
                'details1_file_name',
                'details2_file_name'
            ];

            $content->relatedContents = Content::select($_NEED)
                ->where('cat_id', $findCategory->id)
                ->where('sub_cat_id', $content->sub_cat_id)
                ->where('id', '!=', $content->id)
                ->orderBy('id', 'desc')
                ->get();
                
            $favoriteController = new FavoriteController();
            $ratingController = new RatingController();

            
            $getName = ucwords($findCategory->cat_name);
            $image_url = str_replace('-', '_', $getName);

            if($content->relatedContents->count() > 0) {
                foreach ($content->relatedContents as $item) {
                    $item->is_favorite = $favoriteController->IS_FAVORITE($item->id); 
                    $item->img = $item->img($item->id);
                }
            }

            $cat_name = str_replace(' ', '-', strtolower($findCategory->cat_name));
            $content->cat_name = $cat_name;
            $content->rating = $ratingController->GET_CONTENT_RATING($content->id);
            $content->is_favorite = $favoriteController->IS_FAVORITE($content->id);
            $content->img = $content->img($content->id);
            return $content;
        }
    }
}

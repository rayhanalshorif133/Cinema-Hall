<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class SearchController extends Controller
{
   
    public function index($keyword)
    {
        $contents = Content::where('title', 'LIKE', '%' . $keyword . '%')->get();
        $favController = new FavoriteController();

        foreach ($contents as $item) {
            $item->is_favorite = $favController->IS_FAVORITE($item->id);
        }

    
        return view('public.others.search', compact('contents'));
    }


    public function search(Request $request)
    {
        $keyword = $request->searchInput;
        return redirect()->route('search.index', $keyword);
    }
}

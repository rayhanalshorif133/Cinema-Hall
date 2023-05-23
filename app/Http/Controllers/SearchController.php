<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class SearchController extends Controller
{
   
    public function search($keyword)
    {
        dd($keyword);
        return view('public.others.search', compact('favorite_contents'));
    }
}

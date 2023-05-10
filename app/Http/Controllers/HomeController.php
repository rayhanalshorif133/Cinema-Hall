<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {

        $categories = Category::where('parent_id', 0)
        ->where('type_id', 4)
        ->where('status', 'published')
        ->where('type', 'video')
        ->orderBy('language', 'asc')
        ->get();

        foreach ($categories as $key => $item) {
            $categories[$key]->contents = Content::select('id','title', 'description')
            ->where('cat_id', $item->id)
            ->where('status', 'published')
            ->get();
        }

        return view('home', compact('categories'));
    }
}

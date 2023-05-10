<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category_all()
    {
        $homeController = new HomeController();
        $categories = $homeController->category_info();
        return view('public.category.all', compact('categories'));
    }
    
    public function category_detail($id = null,$name = null)
    {


        if($id && $name){
            $name = str_replace('-', ' ', $name);
            return view('public.category.details', compact('name'));
        }
    }
}

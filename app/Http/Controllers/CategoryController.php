<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category_detail($id = null,$name = null)
    {

        if($id && $name){
            $name = str_replace('-', ' ', $name);
            dd($id,$name);
            return view('category', compact('name'));
        }
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category_all()
    {
        $homeController = new HomeController();
        $categories = $homeController->category_info();
        $title = 'Cinema-Hall | All Categories';
        return view('public.category.all', compact('categories', 'title'));
    }
    
    public function category_detail($id = null,$name = null)
    {

        if($id && $name){

            // GET SUB CATEGORY
            $sub_categories = Category::select('id','cat_name')
            ->where('parent_id', $id)
            ->get();

            
            // GET CONTENTS
            foreach ($sub_categories as $key => $sub_category){

                $_NEED = ['id',
                'title', 
                'description', 
                'prv1_file_name',
                'prv2_file_name',
                'details1_file_name',
                'details2_file_name'];

                $sub_categories[$key]->contents = Content::select($_NEED)
                ->where('cat_id', $id)
                ->where('sub_cat_id', $sub_category->id)
                ->orderBy('id', 'desc')
                ->get();
            }
            $name = str_replace('-', ' ', $name);
            $category_id = $id;
            return view('public.category.details', compact('category_id','sub_categories','name'));
        }
    }
}

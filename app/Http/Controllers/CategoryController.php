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

    public function category_detail($id = null, $name = null)
    {

        if ($id && $name) {

            // GET SUB CATEGORY
            $sub_categories = Content::select('cat_id', 'sub_cat_id')
                ->where('cat_id', $id)
                ->get()
                ->unique('sub_cat_id');

            // GET CONTENTS
            $_NEED_CONTENT = [
                'id',
                'title',
                'description',
                'cat_id',
                'sub_cat_id',
                'prv1_file_name',
                'prv2_file_name',
                'details1_file_name',
                'details2_file_name'
            ];
            foreach ($sub_categories as $key => $sub_category) {
                $sub_category->cat_name = Category::select('cat_name')
                    ->where('id', $sub_category->sub_cat_id)
                    ->first()
                    ->cat_name;
                $sub_categories[$key]->contents = Content::select($_NEED_CONTENT)
                    ->where('cat_id', $sub_category->cat_id)
                    ->where('sub_cat_id', $sub_category->sub_cat_id)
                    ->orderBy('id', 'desc')
                    ->get();
            }

            $name = str_replace('-', ' ', $name);
            $category_id = $id;

            // dd($sub_categories);

            return view('public.category.details', compact('category_id', 'sub_categories', 'name'));
        }
    }
}

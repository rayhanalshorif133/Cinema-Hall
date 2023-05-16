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

            $subCatFlag = true;
            // GET SUB CATEGORY
            $sub_categories = Category::select('id','cat_name')
                ->where('parent_id', $id)
                ->get();

            if (count($sub_categories) == 0) {
                $sub_categories = Category::select('id','cat_name')
                ->where('id', $id)
                ->get();
                $subCatFlag = false;
            }


            // dd($sub_categories);


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
                if( $subCatFlag){
                    $sub_categories[$key]->contents = Content::select($_NEED_CONTENT)
                    ->where('cat_id', $id)
                    ->where('sub_cat_id', $sub_category->id)
                    ->where('type', 'video')
                    ->orderBy('id', 'desc')
                    ->get();
                }else{
                    $sub_categories[$key]->contents = Content::select($_NEED_CONTENT)
                    ->where('cat_id', $id)
                    ->where('type', 'video')
                    ->orderBy('id', 'desc')
                    ->get();
                }
            }

            $name = str_replace('-', ' ', $name);
            $category_id = $id;

            return view('public.category.details', compact('category_id', 'sub_categories', 'name'));
        }
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Content;
use App\Models\FavoriteCategory;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function category_all()
    {
        $categories = Category::where('parent_id', 0)
            ->where('type_id', 4)
            ->where('status', 'published')
            ->where('type', 'video')
            ->orderBy('language', 'asc')
            ->get()
            ->toArray();
        foreach ($categories as $key => $category){
            $category = (object) $category;
            $category->is_favorite = FavoriteCategory::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")
                ->where('category_id', $category->id)
                ->first() ? true : false;
            $category->tag = str_replace(' ', '', $category->cat_name);
            $categories[$key] = $category;

        }
        $title = 'Cinema-Hall | All Categories';
        
        // orderby is_favorite
        usort($categories, function ($b,$a) {
            return $a->is_favorite <=> $b->is_favorite;
        });
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


            $favoriteController = new FavoriteController();
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

                foreach ($sub_categories[$key]->contents as $item) {
                    $item->is_favorite = $favoriteController->IS_FAVORITE($item->id);
                }

            }

            $name = str_replace('-', ' ', $name);
            $category_id = $id;

            return view('public.category.details', compact('category_id', 'sub_categories', 'name'));
        }
    }

    public function create_favorite(Request $request){

        $key_id = $this->get_msisdn();
        if($key_id && $request->categoryID){
            if($request->status == 'delete'){
                $favoriteCategory = FavoriteCategory::where('key_id', $key_id)
                ->where('category_id', $request->categoryID)
                ->delete();
                return $this->respondWithSuccess("favorite", $favoriteCategory);
            }else{
                $favoriteCategory = FavoriteCategory::updateOrCreate(
                    ['key_id' => $key_id, 'category_id' => $request->categoryID],
                    ['key_id' => $key_id, 'category_id' => $request->categoryID]
                );
                return $this->respondWithSuccess("favorite", $favoriteCategory);
            }
        }else{
            return $this->respondWithError("Something went wrong");
        }


    }
}

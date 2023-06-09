<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Models\Favorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    
    public function create(Request $request)
    {
        $msg = "";
        $status = "";

        if($request->content_id){
            $findFavorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")->first();
            if($findFavorite){
                // $findFavorite to array
                $updateFavorite = $findFavorite ? json_decode($findFavorite->content_ids) : [];
                // $updateFavorite to array
                $updateFavorite = (array) $updateFavorite;
                // check if content_id is exist in $updateFavorite
                if(!in_array($request->content_id, $updateFavorite)){
                    array_push($updateFavorite, $request->content_id);
                    $msg = "Added to favorite";
                    $status = "added";
                }else{
                    $updateFavorite = array_diff($updateFavorite, [$request->content_id]);
                    $msg = "Removed from favorite";
                    $status = "removed";
                }
                $updateFavorite = array_values($updateFavorite);
                $findFavorite->content_ids  = json_encode($updateFavorite);
                $findFavorite->save();
                $favorite = $findFavorite;
            }else{
                $favorite = new Favorite();
                $favorite->key_id = $this->get_msisdn() ? $this->get_msisdn() : "0";
                $favorite->content_ids = '['. json_encode($request->content_id) .']';
                $favorite->save();
            }
            // Push
            $favorite->msg = $msg;
            $favorite->status = $status;
            return $this->respondWithSuccess('Favorite Created!', $favorite);
        }else{
            return $this->respondWithError('Content ID is required!');
        }

    }

    public function showAllFavorite()
    {
        $favorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")  
        ->first();
        // GET CONTENTS
        if($favorite){
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
            $favorite_contents = Content::select($_NEED_CONTENT)
                        ->whereIn('id', $favorite->get_content_ids($favorite->content_ids))
                        ->get();
            return view('public.others.favorite_all', compact('favorite_contents'));
        }else{
            $favorite_contents = [];
            return view('public.others.favorite_all', compact('favorite_contents'));
        }
    }

    public function IS_FAVORITE($content_id){
        $findFavorite = Favorite::where('key_id', $this->get_msisdn() ? $this->get_msisdn() : "0")->first();
        if($findFavorite){
            // $findFavorite to array
            $updateFavorite = $findFavorite ? json_decode($findFavorite->content_ids) : [];
            // $updateFavorite to array
            $updateFavorite = (array) $updateFavorite;
            // check if content_id is exist in $updateFavorite
            if(in_array($content_id, $updateFavorite)){
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
}

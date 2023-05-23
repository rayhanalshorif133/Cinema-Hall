<?php

namespace App\Http\Controllers;

use App\Models\Rating;
use Illuminate\Http\Request;

class RatingController extends Controller
{
    public function create(Request $request)
    {   
        if(!$request->rating && !$request->contentId){
            return $this->respondWithError('Rating and contentId are required');
        }else{
            $keyID = $this->get_msisdn();
            if($keyID){
                // Rating create or update
                $rating = Rating::updateOrCreate(
                    ['key_id' => $keyID, 'content_id' => $request->contentId],
                    ['rating' => $request->rating]
                );
                return $this->respondWithSuccess('Rating submitted! Thanks for your feedback!', $rating);
            }else{
                return $this->respondWithError('Rating not created');
            }
        }
    }


    public function GET_CONTENT_RATING($content_id){
        $keyID = $this->get_msisdn();
        if($keyID){
            $rating = Rating::select('rating')
                ->where('key_id', $keyID)
                ->where('content_id', $content_id)
                ->first();
            return $rating ? $rating->rating : 0;
        }else{
            return 0;
        }
    }
}

<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SubscriptionHandleController extends Controller
{
    public function subscriberInfoSend(Request $request){
        
        return $this->respondWithSuccess("data", $request->all());
    }
    
    public function subscriberNotification(){
        $data = [
            'msisdn' => '+8801323174104',
            'opr' => 'GP',
            'service' => 'CH',
            'sub_service' => null,
            'channel' => 'yznx',	
            'push_date' => '2023-10-21',	
            'next_date' => '2023-10-22',	
            'next_content_push_date' => '2023-10-22',	
            'counter' => 0,
            'counter_reset_date' => '2023-09-01'
        ];
        return $this->respondWithSuccess("data", $data);
    }
}

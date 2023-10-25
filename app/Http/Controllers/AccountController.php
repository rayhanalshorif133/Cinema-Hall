<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;

class AccountController extends Controller
{
    public function index(){

        $msisdn = $this->get_msisdn();
        $homeController = new HomeController();
        $categories = $homeController->category_info();
        $subscriberInfo = Subscriber::select()
            ->where('msisdn', $this->get_msisdn())
            ->first();
       return view('public.account.index', compact('msisdn','categories','subscriberInfo'));
    }
}

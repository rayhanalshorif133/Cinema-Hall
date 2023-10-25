<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;
use Illuminate\Support\Facades\Http;

class SubscriptionController extends Controller
{
    public function subscriberConfirmation()
    {

        // env variables

        $homeController = new HomeController();
        $categories = $homeController->category_info();
        $phone = $this->get_msisdn();

        $isSubscriber = Subscriber::select()
            ->where('msisdn', $phone)
            ->where('status', 1)
            ->first();
        if ($isSubscriber) {
            flash()->addSuccess('You are already subscribed');
            return redirect()->route('home');
        }

        return view('public.subscribe.confirmation', compact('categories', 'phone'));
    }

    public function subscriberConfirmed()
    {

        $isSubscriber = Subscriber::where('msisdn', $this->get_msisdn())->first();
        if ($isSubscriber) {
            if ($isSubscriber->status == 1) {
                flash()->addSuccess('You are already subscribed');
                return redirect()->route('home');
            } else {
                $isSubscriber->update([
                    'status' => 1,
                    'last_update' => now()->format('Y-m-d H:i:s'),
                ]);
                flash('Subscription has been successful');
                return redirect()->route('home');
            }
        } else {



            $arrContextOptions= [
                'ssl' => [
                    'verify_peer'=> false,
                    'verify_peer_name'=> false,
                ],
            ];
            $api_url = 'https://random-app.technical-content.xyz/api/subscriber-notification?service_key=CH&msisdn=' . $this->get_msisdn(); // Read JSON file
            $json_data = file_get_contents($api_url,false, stream_context_create($arrContextOptions));
            // Decode JSON data into PHP array
            $response_data = json_decode($json_data);
            // All user data exists in 'data' object
            $subscriber_data = $response_data->data;

            if($subscriber_data){
                $new_subscriber = new Subscriber();
                $new_subscriber->msisdn = $this->get_msisdn();
                $new_subscriber->opr = $subscriber_data->opr;
                $new_subscriber->channel = $subscriber_data->channel;
                $new_subscriber->status = 1;
                $new_subscriber->service = $subscriber_data->service;
                $new_subscriber->subs_date = $subscriber_data->push_date;
                $new_subscriber->charge_date = $subscriber_data->push_date;
                $new_subscriber->entry = $subscriber_data->counter;
                $new_subscriber->tid = $subscriber_data->tid;
                $new_subscriber->last_update = $subscriber_data->counter_reset_date;
                $new_subscriber->save();
                $homeController = new HomeController();
                $categories = $homeController->category_info();
                flash('Subscription has been successful');
                return redirect()->route('home');
            }

        }
        return redirect()->route('home');
    }

    public function subscriberCancelConfirmation()
    {
        $phone = $this->get_msisdn();

        $isSubscriber = Subscriber::select()
            ->where('msisdn', $this->get_msisdn())
            ->where('status', 0)
            ->first();
        if ($isSubscriber) {
            $this->flashMessageSuccess('You are already unsubscribed');
            return redirect()->route('home');
        }

        $homeController = new HomeController();
                $categories = $homeController->category_info();
        return view('public.subscribe.cancel', compact('phone','categories'));
    }

    public function subscriberCancelConfirmed()
    {
        $isSubscriber = Subscriber::select()
        ->where('msisdn', $this->get_msisdn())
        ->where('status', 1)
        ->first();
        if ($isSubscriber) {

            $arrContextOptions= [
                'ssl' => [
                    'verify_peer'=> false,
                    'verify_peer_name'=> false,
                ],
            ];
            
            
            $api_url = 'https://random-app.technical-content.xyz/api/unsubscriber-notification?service_key=CH&msisdn=' . $this->get_msisdn(); // Read JSON file
            $json_data = file_get_contents($api_url,false,
            stream_context_create($arrContextOptions));
            // Decode JSON data into PHP array
            $response_data = json_decode($json_data);

            
            // All user data exists in 'data' object
            $subscriber_data = $response_data->data;
            if($subscriber_data){
                $isSubscriber->update([
                    'status' => 0,
                    'modified' => now()->format('Y-m-d H:i:s'),
                    'last_update' => now()->format('Y-m-d H:i:s'),
                ]);
                flash('You are unsubscribed');
            }
        }else{
            flash('You are already unsubscribed');
        }
        return redirect()->route('home');
    }
}

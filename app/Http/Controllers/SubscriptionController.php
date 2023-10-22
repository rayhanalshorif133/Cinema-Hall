<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscriber;

class SubscriptionController extends Controller
{
    public function subscriberConfirmation()
    {
        $phone = $this->get_msisdn();

        $isSubscriber = Subscriber::select()
            ->where('msisdn', $this->get_msisdn())
            ->where('status', 1)
            ->first();
        if ($isSubscriber) {
            $this->flashMessageSuccess('You are already subscribed');
            return redirect()->route('home');
        }

        return view('subscribe.confirmation', compact('phone'));
    }

    public function subscriberConfirmed()
    {
        $isSubscriber = Subscriber::where('msisdn', $this->get_msisdn())->first();
        if ($isSubscriber) {
            if ($isSubscriber->status == 1) {
                $this->flashMessageSuccess('You are already subscribed');
                return redirect()->route('home');
            } else {
                $isSubscriber->update([
                    'status' => 1,
                    'modified' => now()->format('Y-m-d H:i:s'),
                    'last_update' => now()->format('Y-m-d H:i:s'),
                ]);
            }
        } else {
            Subscriber::create([
                'msisdn' => $this->get_msisdn(),
                'opr' => $this->get_opr(),
                'status' => 1,
                'last_update' => now()->format('Y-m-d H:i:s'),
                'created' => now()->format('Y-m-d H:i:s'),
                'modified' => now()->format('Y-m-d H:i:s'),
            ]);
        }
        return view('subscribe.confirmed');
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

        return view('subscribe.cancel', compact('phone'));
    }

    public function subscriberCancelConfirmed()
    {
        $isSubscriber = Subscriber::select()
            ->where('msisdn', $this->get_msisdn())
            ->first();
        if ($isSubscriber) {
            $isSubscriber->update([
                'status' => 0,
                'modified' => now()->format('Y-m-d H:i:s'),
                'last_update' => now()->format('Y-m-d H:i:s'),
            ]);
        }
        $this->flashMessageSuccess('You are unsubscribed');
        return view('subscribe.cancel-confirmed');
    }
}

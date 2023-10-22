<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\SubscriptionHandleController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// http://localhost:3000/api/subscriber-info/send
// Route::get('subscriber-info/send', [SubscriptionHandleController::class, 'subscriberInfoSend'])->name('subscriber-info.send');

// http://localhost:3000/api/subscriber-notification?service_key=CH&msisdn=01323174104
Route::get('subscriber-notification', [SubscriptionHandleController::class, 'subscriberNotification'])->name('subscriber-notification');

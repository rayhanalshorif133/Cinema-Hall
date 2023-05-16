<?php

use App\Http\Controllers\WatchController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::prefix('watch/')
    ->name('watch.')
    ->controller(WatchController::class)
    ->group(function(){
    Route::get('/{content_id?}','index')->name('index');
    Route::get('/{content_id}/play','watchPlay')->name('play');
});


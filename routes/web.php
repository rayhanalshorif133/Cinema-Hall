<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\RatingController;
use App\Http\Controllers\WatchController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\SubscriptionController;
use App\Http\Controllers\HitLogController;


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



Route::get('/clear', function () {
    Artisan::call('view:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('config:clear');
    Artisan::call('optimize:clear');
    Artisan::call('config:cache');
    Artisan::call('optimize');
    Artisan::call('route:cache');
    return 'clear';
});

Route::get('/',[HomeController::class,'index'])->name('home');
// category
Route::prefix('category/')
    ->name('category.')
    ->controller(CategoryController::class)
    ->group(function(){
    Route::get('/all','category_all')->name('all');
    Route::get('/{id?}/{name?}','category_detail')->name('detail');

    // Favorite categories
    Route::post('/favorite/create','create_favorite')->name('create_favorite');
});

// favorite
Route::prefix('favorite')
    ->name('favorite.')
    ->controller(FavoriteController::class)
    ->group(function(){
    Route::post('/create','create')->name('create');
    Route::get('/see-more','showAllFavorite')->name('show-all-favorite');
});

// rating
Route::prefix('rating/')
    ->name('rating.')
    ->controller(RatingController::class)
    ->group(function(){
    Route::post('create','create')->name('create');
});

// watch
Route::prefix('watch/')
    ->name('watch.')
    ->controller(WatchController::class)
    ->group(function(){
    Route::get('/{content_id?}','index')->name('index');
    Route::get('/{content_id}/play','watchPlay')->name('play');
});

// search

Route::prefix('search/')
    ->name('search.')
    ->controller(SearchController::class)
    ->group(function(){
    Route::get('/{keyword?}','index')->name('index');
    Route::post('/keyword','search')->name('keyword');
});

// subscription
Route::name('subscription.')
    ->prefix('subscription/')
    ->group(function () {
        Route::get('confirmation', [SubscriptionController::class, 'subscriberConfirmation'])->name('confirmation');
        Route::get('confirmed', [SubscriptionController::class, 'subscriberConfirmed'])->name('confirmed');
        Route::get('cancel-confirmation', [SubscriptionController::class, 'subscriberCancelConfirmation'])->name('cancel-confirmation');
        Route::get('cancel-confirmed', [SubscriptionController::class, 'subscriberCancelConfirmed'])->name('cancel-confirmed');
    });

// hit log
Route::post('/hit-log',[HitLogController::class,'hitLog'])->name('hitLog');
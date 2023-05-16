<?php

use App\Http\Controllers\FavoriteController;
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


Route::prefix('favorite/')
    ->name('favorite.')
    ->controller(FavoriteController::class)
    ->group(function(){
    Route::post('create','create')->name('create');
    Route::get('see-more','showAllFavorite')->name('show-all-favorite');
});


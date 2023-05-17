<?php

use Illuminate\Support\Facades\Artisan;
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


Route::get('command', function () {
    Artisan::call('migrate --database="mysql2"');
    dd('Database 2 migration');
});


foreach (glob(base_path('routes/public/*.php')) as $route) {
    require_once $route;
}
<?php

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/actions',function(){
    return view('pages.actions');
});
Route::get('/about',function(){
    return view('pages.about');
});
Route::get('/contact',function(){
    return view('pages.contact');
});
Route::get('/join',function(){
    return view('pages.join');
});
Route::get('/news',function(){
    return view('pages.news');
});

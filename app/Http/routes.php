<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', [
    'as' => 'index',
    'uses' => 'GuestsBookController@index'
]);

Route::post('/guests/status/{id}', [
    'as' => 'post_guest_status',
    'uses' => 'GuestsBookController@postStatus'

]);
Route::post('/guests/', [
    'as' => 'post_guest',
    'uses' => 'GuestsBookController@postGuest'
]);

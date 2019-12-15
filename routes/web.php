<?php

Route::get('/posts', 'PostController@index');

Route::get('/posts/view/{id}', 'PostController@detail');

Route::get('/posts/add', 'PostController@add');
Route::post('/posts/add', 'PostController@create');


Route::get('/posts/edit/{id}', 'PostController@edit');
Route::post('/posts/edit/{id}', 'PostController@update');
Route::get('/posts/delete/{id}', 'PostController@delete');

Route::post('/comments/add', 'CommentController@create');
Route::get('/comments/delete/{id}', 'CommentController@delete');
Route::get('/comments/edit/{id}', 'CommentController@edit');
Route::post('/comments/edit/{id}', 'CommentController@update');
	



Route::get('/', 'PostController@index');

/*Route::get('/', function () {
    return view('welcome');
});*/

Auth::routes();

Route::get('/home', 'HomeController@index');

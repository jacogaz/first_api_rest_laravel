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

Route::get('/welcome', function () {
    return view('welcome');
});


Route::get('/', function () {
    return "hola mundo con laravel";
});

Route::get('/test-orm', 'pruebasController@testOrm');


//Pruebas de prueba
Route::get('/pruebaUser', 'userController@pruebas');
Route::get('/pruebaLog', 'logController@pruebas');

//Ruta controlador usuario

Route::post('/registro/usuario', 'userController@register');
Route::post('/login/usuario', 'userController@login');
Route::put('/update/usuario', 'userController@update');
Route::get('/detail/usuario/{id}', 'userController@detail');

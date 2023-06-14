<?php

use App\Http\Controllers\OrdersController;
use App\Http\Controllers\userController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
//use is import in laravel 9
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

// Route::get('/', function () { //this php file runs whatever's in the views by returning the view
//     return view('welcome');
// });

// Route::match(['get', 'post'], '/', function(){
//     return 'POST and GET is allowed';
// });

// Route::any('/welcome', function(){

//     return 'Welcome';
// });//any

//redirecting to another website
Route::get('/', [OrdersController::class, 'index'])->middleware('auth');
Route::get('/register', [userController::class, 'register']);
Route::get('/login', [userController::class, 'login'])->name('login')->middleware('guest');
Route::post('/login/process', [userController::class, 'process']);

Route::post('/logout', [userController::class, 'logout']);


Route::post('/store', [userController::class, 'store']);

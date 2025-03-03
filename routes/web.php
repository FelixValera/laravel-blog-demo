<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\postsController;
use App\Http\Controllers\CommentController;
use Illuminate\Validation\Rules\Can;

Route::get('/',[HomeController::class,'show'])->name('inicio');

Route::get('/misposts/{user}',[HomeController::class,'misPosts'])->middleware(['auth','can:view,user'])->name('misPosts');

//rutas de posts
Route::controller(postsController::class)->group(function(){    //Agrupar rutas por controlador
    
    Route::middleware('auth')->group(function(){
        Route::get('/posts/create',"create")->name('crearPost');
        Route::post('/posts',"store");
        Route::get('/posts/{post}/edit',"edit")->middleware('can:update,post');
        Route::patch('/posts/{post}',"update")->middleware('can:update,post');
        Route::delete('/posts/{post}',"destroy")->middleware('can:delete,post');
    });

    Route::get('/posts/{post}',"show");
});

//rutas de comments 
Route::post('/posts/{post}/comments',[CommentController::class,'store'])->middleware('auth');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

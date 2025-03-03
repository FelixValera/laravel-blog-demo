<?php

use App\Http\Middleware\TestMiddleware;
use Illuminate\Auth\Middleware\RedirectIfAuthenticated;
use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;
use Illuminate\Foundation\Http\Middleware\TrimStrings;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__.'/../routes/web.php',
        commands: __DIR__.'/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        
       /* TrimStrings::except([
            'clave'
        ]);
        
        RedirectIfAuthenticated::redirectUsing(function($request){

            return route('inicio');

        });

        $middleware->web(TestMiddleware::class); */
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();

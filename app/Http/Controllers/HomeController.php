<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    
    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        //$posts = DB::table('posts')->get();
        $posts = Post::OrderBy('created_at','desc')->paginate(5);
        
        return view('welcome')->with(['posts'=>$posts,'request'=>$request]);
    }

    /**
     * Display the user resource
     */
    public function misPosts(User $user){
        
        $posts = $user->posts()->orderBy('created_at','desc')->paginate(5);
        
        return view('posts.myPosts',['posts'=>$posts]);
    }

}

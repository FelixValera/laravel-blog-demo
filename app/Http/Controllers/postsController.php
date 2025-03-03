<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;

class postsController extends Controller
{
    
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request)
    {   
        //opciones para guardar registros 
        /* 1era opcion
        $post = new Post();
        $post->title   = $request->title;
        $post->excerpt = $request->excerpt;
        $post->content = $request->content;
        $post->save();
        */

        /* 2da opcion
        Post::create($request->all())  

            definir los campos que se pueden asiganar de manera masiva en el modelo 
            protected $fillable = []
        */

        //3era opcion tambien debe ser fillable
        Post::create([
            'title' => $request->title,
            'excerpt' => $request->excerpt,
            'content' => $request->content,
            'user_id'=> Auth::User()->id
        ]);
        
        return redirect('/');
    }

    /**
     * Display the specified resource.
     */
    public function show(Post $post,Request $request)
    {
        //$post = Post::findOrFail($id); //devulve un 404 si no encuentra nada 

        //(Route model binding) cuando indicamos que recibimos un modelo como parametro ya trae el (findOrFail) incluido
        $comments = $post->comments()->orderBy('created_at','desc')->Paginate(5);
        
        return view('posts.show')->with(['post'=>$post,'comments'=>$comments]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {   
        //Gate::authorize('update',$post); define el metodo del policy relacionado con el Post que le permite return el view 

        return view('posts.edit')->with(['post'=>$post]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PostRequest $request, Post $post)
    {
        $post->update([
            'title'=>$request->title,
            'excerpt'=>$request->excerpt,
            'content'=>$request->content
        ]);

        return redirect('/');
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        $post->delete();

        return redirect('/');
    }
}

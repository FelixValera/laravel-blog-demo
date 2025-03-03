<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\Post;

use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request,Post $post)
    {
        $request->validate(
            
            [
                'content'=>'required|max:272|min:10'
            ],
            [
                'content.required'=>'EL chat esta vacio :(',
                'content.min'=>'minimo 10 caracteres :(',
                'content.max'=>'maximo 272 caracteres :('
            ]
        );

        Comment::create([
            'name' => Auth::User()->name,
            'content'=> $request->content,
            'post_id'=> $post->id
        ]);
        
        return redirect("/posts/$post->id");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}

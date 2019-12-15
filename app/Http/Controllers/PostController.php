<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{

    public function __construct(){
        $this->middleware('auth')->except(['index', 'detail']);
    }

    public function index() {

    	$data = Post::orderBy('id', 'desc')->paginate(5); //Post::all();

    	return view("posts/index", [
    		"posts" => $data
    	]);
    }

    public function detail($id) {

    	$post = Post::find($id);

    	return view("posts/detail", [
    		"post" => $post
    	]);
    }

    public function add() {
    	return view("posts/add");
    }

    public function create() {

    	$validator = validator(request()->all(), [
    		"title" => "required" ,
    		"body" => "required" , 
    		"category_id" => "required"
    	]);

    	if($validator->fails()) {
    		return back()->withErrors($validator);
    	}

    	$post = new Post;
    	$post->title = request()->title;
    	$post->body = request()->body;
    	$post->category_id = request()->category_id;
    	$post->save();

    	return redirect('/posts');
    }

    public function delete($id) {
    	$post = Post::find($id);
    	$post->delete();

    	return redirect('/posts')->with('info', 'A post deleted');
    }

    public function edit($id) {
    	$post = Post::find($id);
    	return view('posts/edit', [
    		'post' => $post
    	]);
    }

    public function update($id) {

        $validator = validator(request()->all(), [
            "title" => "required" ,
            "body" => "required" , 
            "category_id" => "required"
        ]);

        if($validator->fails()) {
            return back()->withErrors($validator);
        }

    	$post = Post::find($id);
    	$post->title = request()->title;
    	$post->body = request()->body;
    	$post->category_id = request()->category_id;
    	$post->save();

    	return redirect("posts/view/$id");
    }
}

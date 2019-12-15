<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;

class CommentController extends Controller
{
   public function create() {

   	$comment = new Comment;
    $comment->comment = request()->comment;
    $comment->post_id = request()->post_id;
    $comment->save();

    return back();
   }

   public function delete($id) {
   	$comment = Comment::find($id);
   	$comment->delete();

   	return back();
   }

   public function edit($id) {

        $comment = Comment::find($id);
        return view("posts/cedit", [
            "comment" => $comment
        ]);
    }

    public function update($id) {
        
        $comment = Comment::find($id);
        $comment->comment = request()->comment;
        $comment->save();

        return redirect("/posts");
    }

}


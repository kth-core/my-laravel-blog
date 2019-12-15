@extends('layouts/app')
@section('content')

<div class="container">
    <h4>Comment Editing!</h4>
    <form method="post">
        {{ csrf_field() }}
        <div class="form-group">
            <textarea name="comment" class="form-control">{{ $comment->comment }}</textarea>
        </div>
        <div class="form-group">
            <input type="submit" value="Update Comment" class="btn btn-info">
        </div>
    </form>
</div>

@endsection
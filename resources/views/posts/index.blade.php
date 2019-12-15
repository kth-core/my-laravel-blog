@extends('layouts/app')

@section('content')

<div class="container">

    @if(session('info'))
    <div class="alert alert-info">
        {{ session('info') }}
    </div>
    @endif

    {{ $posts->links() }}

    @foreach($posts as $post)
    <div class="panel panel-default">

        <div class="panel-heading">
            <a href="{{ url("/posts/view/$post->id") }}" style="text-decoration: none;">
                {{ $post->title }} &laquo;&laquo;
            </a>
        </div>
        <div class="panel-body">
            {{ $post->body }}
        </div>
        <div class="panel-footer">
            <b>Category:</b> {{ $post->category->name }}, 
            {{ $post->created_at->diffForHumans() }}
            <div class="pull-right">
                {{ count($post->comments) }} comments
            </div>
        </div>

    </div>
    @endforeach

</div>

@endsection
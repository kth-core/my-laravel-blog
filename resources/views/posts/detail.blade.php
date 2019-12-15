@extends('layouts/app')

@section('content')
	<div class="container">
		<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
		<div class="panel panel-default">

			<div class="panel-heading">
				{{ $post->title }}
			</div>

			<div class="panel-body">
				{{ $post->body }}
			</div>

			<div class="panel-footer">
				<b>Category:</b> {{ $post->category->name }},
				{{ $post->created_at->diffForHumans() }}
				<div class="pull-right">
					<a href="{{ url("/posts/edit/$post->id") }}">Edit</a> |
					<a href="{{ url("/posts/delete/$post->id") }}">Delete</a>
				</div>
			</div>
			
		</div>

		<h4>Comments {{ count($post->comments) }}</h4>
		<ul class="list-group">
			@foreach($post->comments as $comment)
				<li class="list-group-item">
					{{ $comment->comment }}
					<div class="pull-right">
						<a href="{{ url("/comments/delete/$comment->id") }}" class="close">
							<ion-icon name="close"></ion-icon>
						</a>
						<a href="{{ url("/comments/edit/$comment->id") }}" class="edit">
                            <ion-icon name="construct"></ion-icon>
                    	</a>
					</div>
				</li>
			@endforeach	
		</ul>

		<form action="{{ url('comments/add') }}" method="post">
			{{ csrf_field() }}
			<input type="hidden" name="post_id" value="{{ $post->id }}">
			<textarea name="comment" placeholder="Write Comments" class="btn btn-default"></textarea>
			<br><br>
			<input type="submit" value="Add Comment" class="btn btn-warning">
		</form>
		<br><br><br>
		
	</div>
@endsection
@extends('layouts/app');
@section('content')
	<div class="container">

		@if($errors->any())
			<div class="alert alert-danger">
				@foreach($errors->all() as $error)
					{{ "$error" }}
				@endforeach
			</div>
		@endif
		
		<form method="post">
			{{ csrf_field() }}
			<div class="form-group">
				<label>Title</label>
				<input type="text" name="title" class="form-control" value=" {{ $post->title }}">
			</div>
			<div class="form-group">
				<label>Body</label>
				<textarea name=body class="form-control">{{ $post->body }}</textarea>
			</div>
			<div class="form-group">
				<label>Category</label>
				<select class="form-control" name="category_id">
					<option value="0">{{ $post->category->name }}</option>
					<option value="1">General</option>
					<option value="2">Technology</option>
					<option value="3">News</option>
					<option value="4">Internet</option>
					<option value="5">Mobile</option>
				</select>
			</div>
			<div class="form-group">
				<input type="submit" value="Update Post" class="btn btn-secondary">
			</div>
		</form>
	</div>
@endsection
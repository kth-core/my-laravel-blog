<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Post;
use App\Category;
use App\Comment;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$faker = Faker::create();

    	for($i=0; $i<20; $i++) {
    		$post = new Post;
    		$post->title = $faker->sentence();
    		$post->body = $faker->paragraph();
    		$post->category_id = rand(1, 5);
    		$post->save();
    	}

    	$list = ['General', 'Technology', 'News', 'Internet', 'Mobile'];
    	foreach($list as $name) {
    		$category = new Category;
    		$category->name = $name;
    		$category->save();
    	}

    	for($i=0; $i<20; $i++) {
    		$comment = new Comment;
    		$comment->comment = $faker->paragraph();
    		$comment->post_id = rand(1,20);
    		$comment->save();
    	}
        // $this->call(UsersTableSeeder::class);
    }
}

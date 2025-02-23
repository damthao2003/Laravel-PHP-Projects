<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Book;
class BooksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
//        $sex = ['male','female','other'];

        for ($i = 0; $i < 50; $i++) {
            Book::create([
                'title' => $faker->text(100),
                'author' => $faker->name,
//                'genre' => $genres[array_rand($genres)], // chon ngau nhien 1 gia tri
                'genre' => $faker->text(50),
                'publicationYear' =>$faker->year,
                'ISBN' => $faker->unique()->isbn13(),
                'coverImageURL' =>$faker->imageUrl(),
            ]);
        }
    }
}

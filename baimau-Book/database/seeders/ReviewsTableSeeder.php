<?php

namespace Database\Seeders;

use App\Models\Review;
use Faker\Factory as Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ReviewsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $genres = ['male','female','other'];

        for ($i = 0; $i < 50; $i++) {
            Review::create([
                'bookID' => $faker->numberBetween(61,111),
                'userID' => $faker->numberBetween(1,50),
                'rating' =>$faker->numberBetween(1,5),
                'reviewText' =>$faker->paragraph(1),
                'reviewDate' => $faker->dateTimeBetween('-3 years', 'now'),
            ]);
        }
    }
}

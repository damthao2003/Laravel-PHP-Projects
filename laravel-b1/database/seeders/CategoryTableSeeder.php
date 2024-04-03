<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Fake;
use App\Models\Category;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       $faker = Fake::create();
       for($i=0; $i<30; $i++){
           Category::create([
               'cat_id' => $faker->numberBetween(1,30),
               'cat_name' => $faker->name(true),
           ]);
       }

    }
}

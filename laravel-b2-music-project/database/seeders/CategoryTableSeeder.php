<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Category;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        // Category is Model
        for($i=0; $i<40;$i++){
            Category::create([
                'ma_tloai'=> $i+1,  // key:values, key: tham so cua ten cot trong bang
                'ten_tloai' =>$faker->sentence(2,true),

            ]);

        }
    }
}

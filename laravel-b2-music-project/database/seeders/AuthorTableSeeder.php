<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Author;

class AuthorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for($i=0; $i<40;$i++){
            Author::create([
               'ma_tgia' =>$i + 1,
               'ten_tgia'=> $faker->name(null),
                'hinh_tgia'=>$faker->imageUrl(200,200,'peoples',true),
            ]);

        }
    }
}

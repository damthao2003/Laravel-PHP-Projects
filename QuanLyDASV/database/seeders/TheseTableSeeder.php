<?php

namespace Database\Seeders;

use App\Models\These;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class TheseTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for($i =0; $i<50;$i++){
            These::create([
                'title'=>$faker->text(255),
                'student_id'=>$faker->numberBetween(1,50),
                'program'=>$faker->text(255),
                'supervisor'=>$faker->name(),
                'abstract' =>$faker->text(255),
                'submission_date' => $faker->date(),
                'defense_date' => $faker->date(),
            ]);
        }
    }
}

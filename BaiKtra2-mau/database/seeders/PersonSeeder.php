<?php

namespace Database\Seeders;

use App\Models\Person;
use Faker\Factory as Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PersonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for($i =0; $i<50;$i++){
            Person::create([
                'name'=>$faker->name(),
                'email'=>$faker->email(),
                'phone'=>$faker->phoneNumber(),
                'title'=>$faker->jobTitle(),
                'department_id'=>$faker->numberBetween(1,8)

            ]);
        }
    }
}

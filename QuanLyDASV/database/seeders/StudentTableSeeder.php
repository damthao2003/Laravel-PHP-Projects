<?php

namespace Database\Seeders;

use App\Models\Student;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class StudentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        for($i =0; $i<50;$i++){
            Student::create([
                'first_name'=>$faker->name(),
                'last_name'=>$faker->name(),
                'email'=>$faker->email(),
                'student_number'=> $faker->phoneNumber,
            ]);
        }
    }
}

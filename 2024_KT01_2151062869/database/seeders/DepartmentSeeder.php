<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Department;
use PhpParser\Node\Expr\Cast\String_;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $faker = Faker::create();
        for($i=0;$i<10;$i++){
            Department::create([
                'name'=>'Bộ phận '.$i,
                'description'=>$faker->paragraph(2,true),
            ]);
        }
    }
}

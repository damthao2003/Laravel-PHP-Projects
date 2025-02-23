<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class These extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = ['title', 'student_id','program', 'supervisor','abstract','submission_date','defense_date'];
}

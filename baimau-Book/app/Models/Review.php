<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;
    protected $fillable= ['reviewID','bookID','userID','rating','reviewText','reviewDate'];
    public $timestamps = false;
    Protected $primaryKey = 'reviewID';
}

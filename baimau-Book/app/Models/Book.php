<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = ['bookID','title','author','genre','publicationYear','ISBN','coverImageURL'];
    Protected $primaryKey = 'bookID';


}

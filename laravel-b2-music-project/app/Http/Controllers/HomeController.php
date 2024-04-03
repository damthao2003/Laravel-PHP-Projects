<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
class HomeController extends Controller
{
    public function getAllArticle()
    {
        $articles = Article::all();// lay tat ca cac ban ghi trong DB qua model
        return view('home',compact('articles'));// tao 1 array chua bien va gia tri cua chung

    }
}

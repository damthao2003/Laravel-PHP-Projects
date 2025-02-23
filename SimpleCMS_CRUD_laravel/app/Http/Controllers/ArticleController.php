<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Dotenv\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // co lay du lieu j ko
//       $articles = Article::all(); // c1: SELECT * FROM articles
       $articles = Article::orderBy('id','desc')->take(10)->get(); // lay ra 10 ban ghi

//        $articles = DB::table('articles')->get(); // c2:query builder: SELECT * FROM articles

//        $articles = DB::select('SELECT * FROM articles'); // c3: raw data
       // tra ve view nao
       return view('articles.index', compact('articles')); // truyen bien $articles vao compact()
//        return view('articles.index', ['articles'=>$articles]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('articles.add');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // nhan 1 doi tuong request chua data lay tu dong tu form -> truyen data vao model Article -> DB
//        $title = $request->title;
//        $content = $request->content;
//        $author = $request->author;

        //c1:
//        Article::create([
//            'title'=>$title,
//            'content'=>$content,
//            'author'=>$author
//        ]);

        //c2:
//        $article = new Article();
//        $article->title = $title;
//        $article->content = $content;
//        $article->author = $author;

//        $article->save();

        // c3: '
        $validateData = $request->validate([
           'title' => 'required|max:255',
            'content' =>'required',
            'author' => 'required'
        ]);
        Article::create($validateData);


        // dieu huong ve lai index
        return redirect()->route('articles.index');


    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $article = Article::find($id);
        return view('articles.detail', compact('article'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $article = Article::find($id);
        return view('articles.edit',compact('article'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //gia tri moi lay tu form thong qua request
        $validateData = $request->validate([ // data moi muon sua
            'title' => 'required|max:255',
            'content' =>'required',
            'author' => 'required'
        ]);
        //tim ra item muon sua
        $article = Article::find($id);// data trong db can sua

        $article->update($validateData);
        return redirect()->route('articles.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $article = Article::find($id);
        $article->delete();
        return redirect()->route('articles.index');

    }
}

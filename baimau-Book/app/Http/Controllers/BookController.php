<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $books = Book::paginate(5);
        $i=1;
        return view('books.index',compact('books','i'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
//        $genres = ['male','female','other'];
        // tao 1 mang chua danh sach cac nam tu hien tai den 100 nam truoc
        $currentYear = date('Y');
        $startYear = 1900;
        $years = range($startYear, $currentYear);
        return view('books.add', compact('years'));

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'title' => 'required|string|min:5|max:100',
            'author' => 'required|string',
            'genre' => 'required|string|min:5|max:50',
            'publicationYear' => 'required',
            'ISBN' => 'required|string|unique:books,ISBN',
            'coverImageURL' => 'nullable|string'

        ]);
        $book = new Book();
        $book->fill($validateData);
        $book->save();
        return redirect()->route('books.index')->with('success_add','Book created successfully!');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $book = Book::find($id);
        //$book = Book::where('bookID',$id)->first();
        return view('books.detail',compact('book'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        // tao 1 mang chua danh sach cac nam tu hien tai den 100 nam truoc
        $currentYear = date('Y');
        $startYear = $currentYear - 100;
        $years = range($startYear, $currentYear);
        $book = Book::find($id);
       // $book = Book::where('bookID',$id)->first();
        return view('books.edit', compact('book','years'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validateData = $request->validate([ // data moi muon sua
            'title' => 'required|string|min:10|max:100',
            'author' => 'required|string',
            'genre' => 'required|string|min:10|max:50',
            'publicationYear' => 'required|string',
            'ISBN' => 'required|string',
            'coverImageURL' => 'nullable|string'
        ]);

       // $book = Book::where('bookID', $id)->first();
        $book = Book::find($id);
        //dd($validateData);
        $book->update($validateData);
        //$book->save();
        return redirect()->route('books.index')->with('success_update','Book updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //$book = Book::find($id);
        //$book = Book::where('bookID', $id)->first();
        $book = Book::find($id);
        $book->delete();
        return redirect()->route('books.index')->with('success_delete','Book deleted successfully');
    }
}

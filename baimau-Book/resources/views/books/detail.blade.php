@extends('layout.parent')

@section('title','Book Detail')
@section('main')
    <h4 class="text-center text-uppercase mt-2">Detail Book ID: {{$book->bookID}}</h4>
    <div class="mt-3">
        <div class="card m-auto" style="width: 18rem;">
            <img src="{{$book->coverImageURL}}" class="card-img-top" alt="Book">
            <div class="card-body">
                <h5 class="card-title">Title: {{$book->title}}</h5>
                <p>Author: {{$book->author}}</p>
                <p>Genre: {{$book->genre}}</p>
                <p>PublicationYear: {{$book->publicationYear}}</p>
                <p class="card-text">ISBN: {{$book->ISBN}}</p>
            </div>
            <a href="{{ route('books.index') }}" class="btn btn-primary mt-2">Back</a>
        </div>

    </div>





@endsection

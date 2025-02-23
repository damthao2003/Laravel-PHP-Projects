@extends('layout.parent')

@section('main')
    <style>
        input::placeholder{
            color: darkgray !important;
        }
        h4{
            color: red;
        }
        .form-label{
            font-weight: 600;
        }
        .error1{
            border: 1px solid red;
        }
        .error{
            color: red;
        }
    </style>

    <h3 class="text-center text-uppercase mt-2">Update Book ID: {{$book->bookID}}</h3>

    <form action="{{route('books.update',$book->bookID)}}" method="POST" class="w-75 m-auto ">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label class="form-label" for="title">Title</label>
            <input type="text" class="form-control @error('title') error1 @enderror" name="title" id="title" placeholder="Enter title" value="{{$book->title}}">
            @error('title')
            <div class="error"> {{ $message }}</div>
            @enderror

        </div>
        <div class="mb-3">
            <label class="form-label" for="author">Author</label>
            <input type="text" class="form-control @error('author') error1 @enderror" name="author" id="author" placeholder="Enter author" value="{{$book->author}}">
            @error('author')
            <div class="error"> {{$message}} </div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="genre">Genre</label>
            <input type="text" class="form-control @error('genre') error1 @enderror" name="genre" id="genre" placeholder="Enter genre" value="{{$book->genre}}">

            {{--            <select class="form-select  @error('genre') error1 @enderror" name="genre" id="genre" >--}}
{{--                @foreach($genres as $genre)--}}
{{--                    <option value="{{$genre}}"> {{$book->$genre}} </option>--}}
{{--                @endforeach--}}
{{--            </select>--}}
            @error('genre')
            <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="publicationYear">PublicationYear</label>
            <select name="publicationYear" id="publicationYear" class="form-select @error('publicationYear') error1 @enderror">
                @foreach($years as $year)
                    <option value="{{$year}}" {{$year == $book->publicationYear ? 'selected' : ''}}> {{$year}}</option>
                @endforeach
            </select>
            @error('publicationYear')
            <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="ISBN">ISBN</label>
            <input type="text" class="form-control @error('ISBN') error1 @enderror" name="ISBN" id="ISBN" placeholder="Enter ISBN" value="{{$book->ISBN}}">
            @error('ISBN')
            <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="coverImageURL">CoverImageURL</label>
            <input type="url" class="form-control @error('coverImageURL') error1 @enderror" name="coverImageURL" id="coverImageURL" placeholder="Enter coverImageURL" value="{{$book->coverImageURL}}">
            @error('coverImageURL')
            <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{route('books.index')}}" class="btn btn-danger">Cancel</a>
    </form>
@endsection


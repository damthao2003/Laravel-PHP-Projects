@extends('layout.parent')

@section('main')
    <h1 class="text-center">Cập nhật bài viết</h1>

    <form action="{{route('articles.update', $article)}}" method="POST" class="w-75 m-auto " style="">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label class="form-label" for="title">Tiêu đề</label>
            <input type="text" class="form-control" name="title" id="title" value="{{$article->title}}">
        </div>
        <div class="mb-3">
            <label class="form-label" for="content">Nội dung</label>
            <textarea class="form-control" name="content" id="content" > value="{{$article->content}}"</textarea>
        </div>
        <div class="mb-3">
            <label  class="form-label" for="author">Tác giả</label>
            <input type="text" class="form-control" name="author" id="author" value="{{$article->author}}">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

@endsection

@section('library')
    <script src="https://cdn.ckeditor.com/ckeditor5/41.1.0/classic/ckeditor.js"></script>
    <script >
        ClassicEditor
            .create(document.querySelector('#content'))
            .catch(error =>{
                console.error(error);
            });
    </script>
@endsection

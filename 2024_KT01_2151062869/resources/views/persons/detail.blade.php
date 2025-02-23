@extends('layout.parent')

@section('title','Chi tiết bài viết')
@section('main')
    <h1>{{ $article->title }}</h1>
    <p>{{ $article->content }}</p>
    <p>{{ $article->author }}</p>
    <a href="{{ route('articles.index') }}">Quay lai Trang Chủ</a>


@endsection

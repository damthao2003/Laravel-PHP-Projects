@extends('layout.parent')

@section('title','Book Management')


@section('main')
    <style>
        .fade-out {
            opacity: 1;
            animation: fade-out 5s ease-in-out forwards;
        }
        @keyframes fade-out {
            from {
                opacity: 1;
            }
            to {
                opacity: 0;
            }
        }

        h4{
            color: #0a58ca;
        }
    </style>

    <div class="container">
        <h2 class="m-auto text-center">List of Books</h2>

        <a href="{{route('books.create')}}" class="btn btn-success"> <i class="bi bi-plus-circle"></i> Create Book</a>

        @if(session('success_add'))
            <div id="alert" class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3">
                    {{session('success_add')}}
                </div>
            </div>
        @endif
        @if(session('success_update'))
            <div class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3"> {{session('success_update')}}</div>
            </div>
        @endif
        @if(session('success_delete'))
            <div class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3"> {{session('success_delete')}}</div>
            </div>
        @endif

        <div class=" mt-3">
            <table class="table m-1">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Author</th>
                    <th scope="col">Genre</th>
                    <th scope="col">PublicationYear</th>
                    <th scope="col">ISBN</th>
                    <th scope="col">CoverImageUrl</th>
                    <th scope="col" colspan="3">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($books as $book)
                    <tr>
                        <th scope="row"> {{ $i++ }}</th>
                        <td>{{$book->title}}</td>
                        <td>{{$book->author}}</td>
                        <td>{{$book->genre}}</td>
                        <td>{{$book->publicationYear}}</td>
                        <td>{{$book->ISBN}}</td>
                        <td>
                            <img style="width: 100px" src="{{$book->coverImageURL}}">
                        </td>
                        <td>
                            <a href="{{route('books.show', $book->bookID)}}" class="btn btn-warning">
                                <i class="bi bi-eye-fill"></i>
                            </a>
                        </td>
                        <td>
                            <a href="{{route('books.edit', $book->bookID)}}" class="btn btn-primary">
                                <i class="bi bi-pencil-square"></i>
                            </a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#{{$book->bookID}}" >
                                <i class="bi bi-trash3-fill"></i>
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="{{$book->bookID}}" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa bài viết</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có muốn xóa cuốn sách có id: {{$book->bookID}} không?
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{ route('books.destroy',$book->bookID) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-primary"> Xác nhận</button>
                                            </form>
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

        <div class="mt-3">
            {{$books->onEachSide(1)->links()}}
        </div>

    </div>


@endsection



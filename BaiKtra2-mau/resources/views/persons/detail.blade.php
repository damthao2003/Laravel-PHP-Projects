@extends('layout.parent')

@section('title','Chi tiết bài viết')
@section('main')

    <div class="mt-3">
        <div class="card m-auto w-50" >
            <div class="card-body">
                <h4 class="card-title text-center text-danger">Information Personnel Details</h4>
                <div class="m-3">
                    <p> <span class="fw-bold">Name: </span>{{$person->name}}</p>
                    <p> <span class="fw-bold">Email: </span>{{$person->email}}</p>
                    <p> <span class="fw-bold">Phone: </span>{{$person->phone}}</p>
                    <p> <span class="fw-bold">Department: </span>{{$person->title}}</p>
                </div>
            </div>
            <a href="{{ route('persons.index') }}" class="btn btn-primary w-25 ms-auto" style="margin: 0 30px 15px">Back</a>
        </div>


    </div>


@endsection

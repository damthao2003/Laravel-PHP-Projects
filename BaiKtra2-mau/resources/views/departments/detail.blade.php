@extends('layout.parent')

@section('title','Department details')
@section('main')

    <div class="mt-3">
        <div class="card m-auto w-50 " >
            <div class="card-body">
                <h4 class="card-title text-center text-danger">Information Department Details</h4>
                <div class="m-4">
                    <p> <span class="fw-bold">Department Name: </span>{{$department->name}}</p>
                    <p> <span class="fw-bold">Description: </span>{{$department->description}}</p>

                </div>
            </div>
            <a href="{{ route('departments.index') }}" class="btn btn-primary w-25 ms-auto" style="margin: 0 30px 15px">Back</a>
        </div>


    </div>


@endsection


@extends('layout.parent')
@section('main')

    {{--    @push('styles')--}}
    {{--        <link rel="stylesheet" href="{{asset('css/add.css')}}">--}}
    {{--    @endpush--}}
    <style>
        input::placeholder {
            color: darkgray !important;
        }

        h4 {
            color: red;
        }

        .form-label {
            font-weight: 600;
        }

        .error1 {
            border: 1px solid red;
        }

        .error {
            color: red;
        }

    </style>

    <h4 class="text-center text-uppercase mt-2">Create Department</h4>



    <form action="{{route('departments.store')}}" method="POST" class="w-75 m-auto ">
        @csrf
        <div class="mb-3">
            <label class="form-label" for="name">Name</label>
            <input type="text" class="form-control @error('name') error1 @enderror" name="name" id="name"
                   placeholder="Enter name" value="{{old('name')}}">
            @error('name')
            <div class="error"> {{ $message }}</div>
            @enderror

        </div>

        <div class="mb-3">
            <label class="form-label" for="description">Description</label>
            <input type="text" class="form-control" name="description" id="description" placeholder="Enter description" value="{{old('description')}}">
            @error('description')
            <div class="error"> {{$message}} </div>
            @enderror
        </div>
        <div class="float-end">
            <button type="submit" class="btn btn-primary ">Submit</button>
            <a href="{{route('departments.index')}}" class="btn btn-danger">Cancel</a>
        </div>
    </form>

@endsection




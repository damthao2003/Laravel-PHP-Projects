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

    <h3 class="text-center text-uppercase mt-2">Update Department</h3>

    <form action="{{route('departments.update',$department->id)}}" method="POST" class="w-75 m-auto ">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label class="form-label" for="name">Department name</label>
            <input type="text" class="form-control @error('name') error1 @enderror" name="name" id="name" value="{{$department->name}}" >
            @error('name') <div class="error"> {{ $message }}</div> @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="description">Description</label>
            <input type="text" class="form-control" name="description" id="description" value="{{$department->description}}">
            @error('description') <div class="error"> {{$message}}</div> @enderror
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{route('departments.index')}}" class="btn btn-danger">Cancel</a>
    </form>
@endsection



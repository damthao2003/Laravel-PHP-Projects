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

    <h4 class="text-center text-uppercase mt-2">Create Contact</h4>

    <form action="{{route('persons.store')}}" method="POST" class="w-75 m-auto ">
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
            <label class="form-label" for="email">Email</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" value="{{old('email')}}">
            @error('email')
                <div class="error"> {{$message}} </div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="phone">Phone</label>
            <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone" value="{{old('phone')}}">
            @error('phone')
                <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title" placeholder="Enter title" value="{{old('title')}}">
            @error('title')
                <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="department_name">Department</label>
            <select class="form-select" name="department_id" id="department_name" >
                <option disabled selected style="color: darkgray">Select department</option>
                @foreach($departments as $depart)
                    <option value="{{$depart->id}}"> {{$depart->name}} </option>
                @endforeach
            </select>
            @error('department_id')
             <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="float-end">
            <button type="submit" class="btn btn-primary ">Submit</button>
            <a href="{{route('persons.index')}}" class="btn btn-danger">Cancel</a>
        </div>
    </form>

@endsection



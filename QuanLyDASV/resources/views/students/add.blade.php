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

    <form action="{{route('students.store')}}" method="POST" class="w-75 m-auto ">
        @csrf
        <div class="mb-3">
            <label class="form-label" for="first_name">First Name</label>
            <input type="text" class="form-control @error('first_name') error1 @enderror" name="first_name" id="first_name"
                   placeholder="Enter first_name" value="{{old('first_name')}}">
            @error('first_name')
            <div class="error"> {{ $message }}</div>
            @enderror

        </div>
        <div class="mb-3">
            <label class="form-label" for="last_name">Last Name</label>
            <input type="last_name" class="form-control" name="last_name" id="last_name" placeholder="Enter last_name" value="{{old('last_name')}}">
            @error('last_name')
                <div class="error"> {{$message}} </div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="text" class="form-control" name="email" id="email" placeholder="Enter email" value="{{old('email')}}">
            @error('email')
                <div class="error">{{ $message }}</div>
            @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="student_number">Student Number</label>
            <input type="text" class="form-control" name="student_number" id="student_number" placeholder="Enter student_number" value="{{old('student_number')}}">
            @error('student_number')
                <div class="error">{{ $message }}</div>
            @enderror
        </div>
{{--        <div class="mb-3">--}}
{{--            <label class="form-label" for="department_name">Department</label>--}}
{{--            <select class="form-select" name="department_id" id="department_name" >--}}
{{--                <option disabled selected style="color: darkgray">Select department</option>--}}
{{--                @foreach($departments as $depart)--}}
{{--                    <option value="{{$depart->id}}"> {{$depart->name}} </option>--}}
{{--                @endforeach--}}
{{--            </select>--}}
{{--            @error('department_id')--}}
{{--             <div class="error">{{ $message }}</div>--}}
{{--            @enderror--}}
{{--        </div>--}}
        <div class="float-end">
            <button type="submit" class="btn btn-primary ">Submit</button>
            <a href="{{route('students.index')}}" class="btn btn-danger">Cancel</a>
        </div>
    </form>

@endsection



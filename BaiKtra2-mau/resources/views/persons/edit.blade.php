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

    <h3 class="text-center text-uppercase mt-2">Update Contact</h3>

    <form action="{{route('persons.update',$person->id)}}" method="POST" class="w-75 m-auto ">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label class="form-label" for="name">Name</label>
            <input type="text" class="form-control @error('name') error1 @enderror" name="name" id="name" value="{{$person->name}}" >
             @error('name') <div class="error"> {{ $message }}</div> @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="text" class="form-control" name="email" id="email" value="{{$person->email}}">
            @error('email') <div class="error"> {{$message}}</div> @enderror
        </div>
        <div class="mb-3">
            <label  class="form-label" for="phone">Phone</label>
            <input type="text" class="form-control" name="phone" id="phone" value="{{$person->phone}}">
            @error('phone') <div class="error"> {{$message}}</div> @enderror
        </div>
        <div class="mb-3">
            <label  class="form-label" for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title" value="{{$person->title}}">
            @error('title') <div class="error"> {{$message}}</div> @enderror
        </div>
        <div class="mb-3">
            <label class="form-label" for="department_id">Department</label>
            <select class="form-select" name="department_id" id="department_id">
{{--                <option value="{{$department->name}}" style="color: darkgray">--}}
{{--                    {{$department->name}}--}}
{{--                </option>--}}
                @foreach($departments as $department)
{{--                    @if($department->name !== $department->name)--}}
                        <option value="{{$department->id}}" {{$department->id == $person->department_id ? 'selected' : ' '}}>
                            {{$department->name}}
                        </option>
{{--                    @endif--}}
                @endforeach
            </select>
            @error('department_id') <div class="error"> {{$message}}</div> @enderror
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="{{route('persons.index')}}" class="btn btn-danger">Cancel</a>
    </form>
@endsection


@extends('layout.parent')

@section('main')
    <h3 class="text-center text-uppercase mt-2">Create Contact</h3>

    <form action="{{route('persons.update',$person)}}" method="POST" class="w-75 m-auto ">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label class="form-label" for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" value="{{$person->name}}">
        </div>
        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="text" class="form-control" name="email" id="email" value="{{$person->email}}">
        </div>
        <div class="mb-3">
            <label  class="form-label" for="phone">Phone</label>
            <input type="text" class="form-control" name="phone" id="phone" value="{{$person->phone}}">
        </div>
        <div class="mb-3">
            <label  class="form-label" for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title" value="{{$person->title}}">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

@endsection


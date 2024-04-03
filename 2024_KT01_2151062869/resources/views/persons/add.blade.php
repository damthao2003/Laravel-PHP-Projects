@extends('layout.parent')

@section('main')
    <h3 class="text-center text-uppercase mt-2">Create Contact</h3>

    <form action="{{route('persons.store')}}" method="POST" class="w-75 m-auto " style="">
        @csrf
        <div class="mb-3">
            <label class="form-label" for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name">
        </div>
        <div class="mb-3">
            <label class="form-label" for="email">Email</label>
            <input type="email" class="form-control" name="email" id="email"></input>
        </div>
        <div class="mb-3">
            <label  class="form-label" for="phone">Phone</label>
            <input type="phone" class="form-control" name="phone" id="phone">
        </div>
        <div class="mb-3">
            <label  class="form-label" for="title">Title</label>
            <input type="text" class="form-control" name="title" id="title">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

@endsection

@section('library')
    <script src="https://cdn.ckeditor.com/ckeditor5/41.1.0/classic/ckeditor.js"></script>
    <script >
        ClassicEditor
            .create(document.querySelector('#content'))
            .catch(error =>{
                console.error(error);
            });
    </script>
@endsection

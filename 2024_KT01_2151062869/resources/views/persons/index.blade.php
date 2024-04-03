@extends('layout.parent')

@section('title','List Contact');


{{--<?php--}}
{{--$itemPerPage = 10;--}}
{{--$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;--}}
{{--//$totalPages = ceil(count($articles) / $itemPerPage);--}}
{{--?>--}}

@section('main')
    <div class="container">
        <h3 class="mt-2">Read Contact</h3>
        <hr>
        <a href="{{route('persons.create')}}" class="btn btn-success">Create Contact</a>
        <div class="table">
            <table class="table mt-3">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Title</th>
                    <th scope="col">Created</th>
                    <th scope="col" colspan="2"></th>

                </tr>
                </thead>
                <tbody>
                @foreach($persons as $person)
                    <tr>
                        <th scope="row"> {{$person->id}}</th>
                        <td>{{$person->name}}</td>
                        <td>{{$person->email}}</td>
                        <td>{{$person->phone}}</td>
                        <td>{{$person->title}}</td>
                        <td>
                            <a href="{{route('persons.edit', $person->id)}}" class="btn btn-primary">
                                <i class="bi bi-pencil-square"></i> </a>
                        </td>
                        <td>
{{--                            <a href="{{route('persons.destroy',$person->id)}}" class="btn btn-danger">--}}
                                <form action="{{ route('persons.destroy',$person->id) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger"><i class="bi bi-trash3-fill"></i></button>
                                </form>
{{--                            </a>--}}
                        </td>
                    </tr>
                @endforeach
                </tbody>

            </table>
    </div>

    </div>

    {{--<nav aria-label="Page navigation example">--}}
    {{--    <ul class="pagination">--}}
    {{--        <?php if ($currentPage > 1) : ?>--}}
    {{--        <li class="page-item">--}}
    {{--            <a href="?page=<?php echo $currentPage - 1; ?>">Previous</a>--}}
    {{--        </li>--}}
    {{--        <?php endif; ?>--}}
    {{--        <?php for ($i = 1; $i <= $totalPages; $i++) : ?>--}}
    {{--        <?php if ($i == $currentPage) : ?>--}}
    {{--        <li class="page-item">--}}
    {{--            <span class="active"><?php echo $i; ?></span>--}}
    {{--        </li>--}}
    {{--        <?php else : ?>--}}
    {{--        <li class="page-item">--}}
    {{--            <a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>--}}
    {{--        </li>--}}
    {{--        <?php endif; ?>--}}
    {{--        <?php endfor; ?>--}}
    {{--        <?php if ($currentPage < $totalPages) : ?>--}}
    {{--        <li class="page-item">--}}
    {{--            <a href="?page=<?php echo $currentPage + 1; ?>">Next</a>--}}
    {{--        </li>--}}
    {{--        <?php endif; ?>--}}
    {{--    </ul>--}}
    {{--</nav>--}}

@endsection



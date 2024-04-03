@extends('layout.parent')

@section('title','Read Contact')

@section('main')
    <style>
        .fade-out {
            opacity: 1;
            animation: fade-out 5s ease-in-out forwards;
        }
        @keyframes fade-out {
            from {
                opacity: 1;
            }
            to {
                opacity: 0;
            }
        }
    </style>

    <div class="container">
        <h4 class="mt-1">Read Contact</h4>
        <hr>

        <a href="{{route('persons.create')}}" class="btn btn-success">Create Contact</a>

        @if(session('success_add'))
            <div id="alert" class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3">
                    {{session('success_add')}}
                </div>
            </div>
        @endif
        @if(session('success_update'))
            <div class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3"> {{session('success_update')}}</div>
            </div>
        @endif
        @if(session('success_delete'))
            <div class="alert alert-success d-flex align-items-center mt-2 fade-out" role="alert">
                <i class="bi bi-check-circle-fill"></i>
                <div class="ml-3"> {{session('success_delete')}}</div>
            </div>
        @endif

        <div class=" mt-3">
            <table class="table m-1">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Title</th>
                    <th scope="col">Department</th>
                    <th scope="col" colspan="2">Action</th>
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
                        @foreach($departments as $depart)
                            @if($person->department_id == $depart->id)
                                <td>{{$depart->name}}</td>
                            @endif
                        @endforeach
                        <td>
                            <a href="{{route('persons.edit', $person->id)}}" class="btn btn-primary">
                                <i class="bi bi-pencil-square"></i> </a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#{{$person->id}}" >
                                <i class="bi bi-trash3-fill"></i>
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="{{$person->id}}" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa bài viết</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn có muốn xóa người dùng {{$person->id}} này không?
                                        </div>
                                        <div class="modal-footer">
                                            <form action="{{ route('persons.destroy',$person->id) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-primary"> Xác nhận</button>
                                            </form>
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>

        <div class="mt-3">
            {{$persons->onEachSide(1)->links()}}
        </div>

    </div>


@endsection



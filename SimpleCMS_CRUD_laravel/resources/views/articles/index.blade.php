{{--ke thua trang parent--}}
@extends('layout.parent')

@section('title','Danh Sách Bài Viết');

<?php
$itemPerPage = 10;
$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
$totalPages = ceil(count($articles) / $itemPerPage);
?>
@section('main')
    <h3 class="text-center text-primary mt-2">Danh Sách Bài Viết</h3>
    <a href="{{route('articles.create')}}" class="btn btn-primary"> <i class="bi bi-plus-lg"></i> Thêm Bài Viết</a>
    <table class="table border mt-3">
        <thead>
        <tr class="text-center">
            <th scope="col">STT</th>
            <th scope="col">Tiêu đề</th>
            <th scope="col">Nội dung</th>
            <th scope="col">Tác giả</th>
            <th scope="col" colspan="3">Thao tác</th>
        </tr>
        </thead>
        <tbody>
        @foreach($articles as $article)
            <tr>
                <th scope="row">{{$article->id}}</th>
                <td>{{$article->title}}</td>
                <td>{{$article->content}}</td>
                <td>{{$article->author}}</td>
                <td>
                    <a href="{{route('articles.show', $article->id)}}" class="btn btn-primary"> <i
                            class="bi bi-eye-fill"></i></a>
                </td>
                <td>
                    <a href="{{route('articles.edit',$article->id)}}" class="btn btn-success"><i
                            class="bi bi-pencil-square"></i> </a>
                </td>
                <td>
                    <form action="{{ route('articles.destroy',$article->id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger"><i class="bi bi-trash3-fill"></i></button>
                    </form>

                    <!-- Modal -->
                    <div class="modal fade" id="{{$article->id}}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa bài viết</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn xóa bài viết này không?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                    <button type="button" class="btn btn-primary">
                                        <form action="{{ route('articles.destroy',$article->id) }}" method="POST">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit">Xóa</button>
                                        </form>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
{{--                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#{{$article->id}}">--}}
{{--                        <i class="bi bi-trash-fill"></i>--}}
{{--                    </button>--}}

{{--                    <!-- Modal -->--}}
{{--                    <div class="modal fade" id="{{$article->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--}}
{{--                        <div class="modal-dialog">--}}
{{--                            <div class="modal-content">--}}
{{--                                <div class="modal-header">--}}
{{--                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Xóa Nhân Viên</h1>--}}
{{--                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--}}
{{--                                </div>--}}
{{--                                <div class="modal-body">--}}
{{--                                    Bạn có chắc chăn muốn xóa nhân viên {{$article->id}} này không ?--}}
{{--                                </div>--}}
{{--                                <div class="modal-footer">--}}
{{--                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>--}}
{{--                                    <form action="{{ route('articles.destroy', $article->id) }}" method="POST">--}}
{{--                                        @csrf--}}
{{--                                        @method('DELETE')--}}
{{--                                        <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Có</button>--}}
{{--                                    </form>--}}

{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}


                </td>
            </tr>
        @endforeach

        </tbody>
    </table>

    <div class="pagination">







    </div>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <?php if ($currentPage > 1): ?>
                <li class="page-item">
                    <a href="?page=<?php echo $currentPage - 1; ?>">Previous</a>
                </li>
            <?php endif; ?>
            <?php for ($i = 1;$i <= $totalPages;$i++): ?>
                <?php if ($i == $currentPage): ?>
                <li class="page-item">
                    <span class="active"><?php echo $i; ?></span>
                </li>
                <?php else: ?>
                   <li class="page-item">
                       <a href="?page=<?php echo $i; ?>"><?php echo $i; ?></a>
                   </li>
                <?php endif; ?>
            <?php endfor; ?>
            <?php if ($currentPage < $totalPages): ?>
                <li class="page-item">
                    <a href="?page=<?php echo $currentPage + 1; ?>">Next</a>
                </li>
            <?php endif; ?>
        </ul>
    </nav>

@endsection

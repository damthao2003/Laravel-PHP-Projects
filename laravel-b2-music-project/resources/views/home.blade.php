@extends('layout.base')

{{--trien khai title--}}
@section('title','Home Page')

@section('main')
    <?php
        $itemsPerPage = 10;
        $currentPage = isset($_GET['page']) ? $_GET['page'] : 1; // truy cap so trang hien tai tu URL
        $totalPages = ceil(count($articles) / $itemsPerPage);


    ?>
   <div class="row m-2">
       @foreach($articles as $article)
           <div class="col-3 mb-2">
                   <div class="card" style="width: 18rem;">
                       <img src="{{$article->hinhanh}}" class="card-img-top" alt="...">
                       <div class="card-body " style="height: 180px">
                           <h5 class="card-title">{{$article->ten_bviet}}</h5>
                           <p class="card-text">
                               <a href="{{ route('articles.show',$article->ma_bviet) }}" class="text-decoration-none">
                                   {{$article->tomtat}}
                               </a>

                           </p>
                       </div>
                   </div>
           </div>
       @endforeach

   </div>

@endsection


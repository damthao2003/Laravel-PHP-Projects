<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>
         {{--  Khac nhau o moi trang      --}}
        @yield('title')
    </title>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
</head>
<body>
 <!--Header - giong nhau-->
{{-- cu phap cua laravel blade--}}
 @include('layout.header')

 <!--Main - giong nhau-->
 <div class="container-fluid'">
     @yield('main')
 </div>

 <!--Footer - giong nhau-->
 @include('layout.footer')

 <link rel="stylesheet" href="{{asset('js/bootstrap.bundle.css')}}">
</body>
</html>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> @yield('title') </title>
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">

</head>
<body>
<header class="bg-success">
    Header
</header>

<main>
    @yield('main-content')
</main>

<footer class="bg-danger">
    Footer
</footer>

<link rel="stylesheet" href="{{asset('js/bootstrap.bundle.css')}}">
</body>
</html>

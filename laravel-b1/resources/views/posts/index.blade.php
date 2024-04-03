<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Posts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<div class="container-fluid">

    <a href="#" class="btn btn-success"> <i class="bi bi-plus-lg"></i> Add</a>

    <table class="table table-bordered mt-3">
        <thead class="text-center">
        <tr>
            <th>#</th>
            <th>Title</th>
            <th >Body</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody class="text-center">
        @foreach($posts as $post)
            <tr>
                <td> {{$post->post_id}} </td>
                <td> {{$post->post_title}} </td>
                <td>{{$post->post_content}} </td>
                <td >
                    <a href="#" class="btn btn-primary"> <i class="bi bi-pencil-square"></i>  </a>
                </td>
                <td  >
                    <a href="#" class="btn btn-danger">  <i class="bi bi-trash3"></i> </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>

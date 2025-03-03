<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @vite('resources/css/app.css')
    <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
    <title>{{ $title }} - Blog de Felix</title>
</head>

<body>

    <x-navbar></x-navbar>

    {{ $slot }}

    <x-footer></x-footer>

</body>

</html>
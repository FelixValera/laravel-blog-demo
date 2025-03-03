<div class="w-1/2 mx-auto">

    <h3 class="text-m border-gray-300 text-gray-900 dark:text-gray-100">Posts Recientes:</h3>

    <ul class="text-xs text-gray-500">

        @foreach ($posts as $post)
            <li class="py-1"><a href="/posts/{{ $post->id }}">{{ $post->title }}</a></li>
        @endforeach

    </ul>

</div>
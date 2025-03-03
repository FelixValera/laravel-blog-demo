<x-app-layout>
    
    <x-slot name='header'>
        
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Mis Publicaciones
        </h2>

    </x-slot>
    
    <div class="w-1/2 mx-auto">

        <div class="py-12">

            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

                <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">

                    @if($posts->isNotEmpty())

                        @foreach ($posts as $post)
                            
                            <article class="mt-5">
                                <h3 class="text-xl border-gray-300 border-b text-gray-900 dark:text-gray-100">
                                    <a href="/posts/{{ $post->id }}" class="hover:text-indigo-500">{{ $post->title }}</a>
                                    <br><small class="text-gray-500">{{ $post->created_at }}</small>
                                </h3>
                                <p class="text-gray-500">{{ $post->excerpt }}</p>
                            </article>

                        @endforeach

                    @else
                    
                        <h3 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">
                        Aún no tienes publicaciones &#x1f62d. Haz clic en "Crear posts" para comenzar a compartir tus ideas y contenido.&#x1f60a</h3>
                        
                    @endif

                </div>

            </div>

        </div>

        <x-slot name="paginador">  

            {{ $posts->links() }}
            
        </x-slot>

    </div>

</x-app-layout>



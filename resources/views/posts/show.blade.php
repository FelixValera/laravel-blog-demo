<x-dynamic-component :component="Auth::check() ? 'appLayout' : 'invitado'">
    
    <x-slot name='header'>
        
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ $post->title }}
        </h2>

    </x-slot>
    
    <div class="w-1/2 mx-auto">

        <div class="py-4">
            
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

                <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">

                    <article class="mt-5">
                        <h1 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">{{ $post->title }}</h1>
                        <p class="text-gray-500 dark:text-gray-400">{{ $post->content }}</p>
                        <small class="text-gray-500">{{ $post->created_at }}</small>
                    </article>
                    
                    <a href= {{  url()->previous(); }} class="btn"><< Volver</a>
                    
                    @can('update', $post)
                    
                        <a href="/posts/{{ $post->id }}/edit" class='btn edit'>Editar</a> 
                        
                        <form action="/posts/{{ $post->id }}" method="post" style="display: inline-block;">
                            @method('delete')
                            @csrf
                            <button type="submit" class='btn delete' onclick="return confirm('¿ Seguro quieres eliminar el Post ?')">Eliminar</button>
                        </form>
    
                    @endcan

                </div>

            </div>

        </div>

        <div class="py-4">

            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

                <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">

                    <h4 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">Comentarios:</h4>

                    <div>

                        @foreach ($comments as $comment)

                            <div class="text-gray-500 dark:text-gray-400">{{ $comment->content }}</div>
                            <small class="text-gray-400 dark:text-gray-500">{{ $comment->name }}&nbsp;&nbsp;&nbsp;{{ $comment->created_at }}</small> 
                            <hr>

                        @endforeach

                    </div>  

                </div>

            </div>

        </div>

        <x-slot name="paginador"> 

            {{ $comments->links() }}

        </x-slot>

        <div class="py-4">   
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">
                    
                    @if ( (Auth::check()) && (Auth::user()->can('create',App\models\User::class)))
                    
                        <form class="mt-8" action="/posts/{{ $post->id }}/comments" method="POST">
                            @csrf

                            <h5 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">Escribe un comentario: <strong class=text-gray-400 dark:text-gray-500>{{ Auth::user()->name }}</strong></h5>
                            
                            <div class="form-group">
                                <textarea class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" type="text" name="content">{{ @old('content') }}</textarea>
                                @error('content')
                                    <div class="text-red-500 text-xs">{{ $message }}</div>
                                @enderror
                            </div>
                            
                            <button type="submit" class="btn edit">Enviar</button>
                        </form>

                    @else

                        <h3 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">
                        Todavia no puedes comentar &#x1f61e. Tienes que registrarte y verficar tu cuenta</h3>

                    @endif

                </div>
            </div>
        </div>
        
    </div>

</x-dynamic-component>

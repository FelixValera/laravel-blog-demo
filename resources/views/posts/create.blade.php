<x-app-layout>
    
    <x-slot name='header'>
        
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Crear Post
        </h2>

    </x-slot>
    
    <form action="/posts" class="form-post" method="POST" >
        @csrf
        
        <div class="py-12">

            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6 ">

                @if(Auth::User()->can('create',App\Models\User::class))
                    
                    <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">
                        
                        <h2 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">Crear post</h2>
                        
                        <div class="form-group py-5">
                            <label for="" class="block font-medium text-xl text-gray-700 dark:text-gray-300">Titulo</label>
                            <input class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" type="text" name="title" value="{{ old('title') }}">
                            @error('title')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                        
                        <div class="form-group py-5">
                            <label for="" class="block font-medium text-xl text-gray-700 dark:text-gray-300">Resumen</label>
                            <textarea class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" name="excerpt" id="">{{ old('excerpt') }}</textarea>
                            @error('excerpt')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                        
                        <div class="form-group py-5">
                            <label for="" class="block font-medium text-xl text-gray-700 dark:text-gray-300">Contenido</label>
                            <textarea class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" name="content" id="">{{ old('content') }}</textarea>
                            @error('content')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                        
                        <div>
                            <button type="submit" class="btn edit">Guardar</button>
                            <a href="/" class="btn delete">cancelar</a>
                        </div>
                        
                    </div>

                @else

                    <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">

                        <h3 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">
                        Aún te falta verificar tu cuenta para poder crear publicaciones &#x1f62d. Haz clic en el link, que enviamos a tu correo para que puedas activar tu cuenta.&#x1f60a</h3>

                    </div>
                
                @endif

            </div>
    
        </div>
    
    </form>

</x-app-layout>
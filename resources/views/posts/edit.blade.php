<x-app-layout>
    
    <x-slot name='header'>
        
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Actualizar
        </h2>

    </x-slot>
    
    <div class="w-1/2 mx-auto mt-5">
        
        <form action="/posts/{{ $post->id }}" method="POST" >
            @csrf
            @method('patch')

            <div class="py-12">

                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">

                    <div class="p-4 sm:p-8 bg-white dark:bg-gray-800 shadow sm:rounded-lg">

                        <h4 class="text-xl border-gray-300 text-gray-900 dark:text-gray-100">Actualizar post</h4>


                        <div class="form-group py-5">
                            <label for="" class="block font-medium text-xl text-gray-700 dark:text-gray-300">Titulo</label>
                            <input type="text" name="title" class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" value="{{ $post->title }}">
                            @error('title')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                
                        <div class="form-group py-5">
                            <label for="" class="block font-medium text-xl text-gray-700 dark:text-gray-300">Resumen</label>
                            <textarea name="excerpt" class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" id="">{{ $post->excerpt }}</textarea>
                            @error('excerpt')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                
                        <div class="form-group">
                            <label for=""class="block font-medium text-xl text-gray-700 dark:text-gray-300">Contenido</label>
                            <textarea name="content" class="border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm" id="" cols="30" rows="6">{{ $post->content }}</textarea>
                            @error('content')
                                <div class="text-red-500 text-xs">{{ $message }}</div>
                            @enderror
                        </div>
                
                        <div class="flex gap-x-1 mt-2">
                            <button type="submit" class="btn edit">Actualizar</button>
                            <a href="/posts/{{ $post->id }}" class="btn delete">cancelar</a>
                        </div>

                    </div> 

                </div>

            </div>
        
        </form>

    </div>

</x-app-layout>


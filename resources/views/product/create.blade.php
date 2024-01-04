<x-app-layout>
    <x-slot name="header">
        <a href="{{ route('dashboard') }}">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Product List') }}
            </h2>
        </a>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-12 lg:px-12">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
        <section>
    <header>
        <h2 class="text-lg font-medium text-gray-900">
            {{ __('Create Product') }}
        </h2>

        <p class="mt-1 text-sm text-gray-600">
            {{ __('Create a New Product.') }}
        </p>
    </header>

    <form method="post" action="{{ route('store.product') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
        @csrf

        <div>
            <x-input-label for="product_name" :value="__('Product Name')" />
            <x-text-input id="product_name" name="product_name" type="text" class="mt-1 block w-full" autocomplete="product_name" />
            <x-input-error :messages="$errors->createProduct->get('product_name')" class="mt-2" />
        </div>

        <div>
            
            <label for="message" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Product Description</label>
            <textarea id="message" name="product_description" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Write your thoughts here..."></textarea>
            <x-input-error :messages="$errors->createProduct->get('product_description')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="product_price" :value="__('Price')" />
            <x-text-input id="product_price" name="product_price" type="text" class="mt-1 block w-full" autocomplete="product_price" />
            <x-input-error :messages="$errors->createProduct->get('product_price')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="product_quantity" :value="__('Quantity')" />
            <x-text-input id="product_quantity" name="product_quantity" type="number" class="mt-1 block w-full" autocomplete="product_quantity" />
            <x-input-error :messages="$errors->createProduct->get('product_quantity')" class="mt-2" />
        </div>

        <div>
            
            <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" for="file_input">Upload Image</label>
            <input class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400" id="file_input" accept="image/*" name="product_image" type="file">
            <x-input-error :messages="$errors->createProduct->get('product_image')" class="mt-2" />
        </div>

        <div>
            <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-state">
                Categories
            </label>
            <div class="relative">
                <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-state" name="category_id">
                    <option></option>
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}">{{ ucwords($category->category_name) }}</option>
                    @endforeach
                </select>
                
            </div>
            <x-input-error :messages="$errors->createProduct->get('category_id')" class="mt-2" />
        </div>

        <div class="flex items-center gap-4">
            <x-primary-button>{{ __('Save') }}</x-primary-button>

            @if (session('status') === 'product-created')
                <p
                    x-data="{ show: true }"
                    x-show="show"
                    x-transition
                    x-init="setTimeout(() => show = false, 2000)"
                    class="text-sm text-gray-600"
                >{{ __('Product Created.') }}</p>
            @endif
        </div>
    </form>
</section>
        </div>
    </div>
        </div>
    </div>
</x-app-layout>

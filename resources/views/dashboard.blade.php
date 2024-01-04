<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Product List') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-12 lg:px-12">
            <div class="flex flex-nowrap justify-around w-500">
                <div class="basis-1/3">
                    <h1 class="font-semibold text-xl text-gray-800 leading-tight my-3">List of Products</h1>
                </div>
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                <div class="basis-1/3">
                    <a href="{{ route('create.product') }}"><x-primary-button>{{ __('Create Product') }}</x-primary-button></a>
                </div>
                &nbsp;&nbsp;
                &nbsp;&nbsp;
                <div class="basis-1/3">
                    <form action="{{ route('products.search') }}" method="GET" class="mb-4">
                        <input type="text" name="search" placeholder="Search by Name or Description"> &nbsp;
                        <x-primary-button>{{ __('Search') }}</x-primary-button>
                    </form>
                </div>
            </div>
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                
                    <div class="flex flex-col">
                        <div class="overflow-x-auto sm:-mx-12 lg:-mx-12">
                            <div class="inline-block min-w-full py-2 sm:px-6 lg:px-8">
                                <div class="overflow-hidden">
                                    <table class="min-w-full text-left text-sm font-light">
                                        <thead class="border-b bg-white font-medium dark:border-neutral-500 dark:bg-neutral-600">
                                            <tr>
                                            <th scope="col" class="px-6 py-4">#</th>
                                            <th scope="col" class="px-6 py-4">Product Name</th>
                                            <th scope="col" class="px-6 py-4">Product Image</th>
                                            <th scope="col" class="px-6 py-4">Product Category</th>
                                            <th scope="col" class="px-6 py-4">Product Price</th>
                                            <th scope="col" class="px-6 py-4">Product Quantity</th>
                                            <th scope="col" class="px-6 py-4">Product Description</th>
                                            <th scope="col" class="px-6 py-4">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($products as $key => $product)
                                            <tr class="border-b bg-neutral-100 dark:border-neutral-500 dark:bg-neutral-700">
                                                <td class="whitespace-nowrap px-6 py-4 font-medium">{{ $key + 1 }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ ucwords($product->name) }}</td>
                                                <td class="whitespace-nowrap px-6 py-4"><img src="{{ url('storage/images/'.$product->product_image) }}" alt="{{ $product->name }}" class="rounded-full w-20"></td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ ucwords($product->category->category_name) }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ $product->quantity }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ $product->price }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ $product->description }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">
                                                    <form method="post" action="{{ route('destroy.product', ['product' => $product->id]) }}" class="inline">
                                                        @csrf
                                                        @method('delete')
                                                        <x-danger-button>{{ __('Delete') }}</x-primary-button>
                                                    </form>
                                                    <br>
                                                    <a href="{{ route('edit.product', ['product' => $product->id]) }}">
                                                        <x-primary-button>{{ __('Edit') }}</x-primary-button>
                                                    </a>
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="my-3">
                                        {{ $products->appends(request()->input())->links() }}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

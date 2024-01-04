<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('List of Users') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-12 lg:px-12">
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
                                            <th scope="col" class="px-6 py-4">User Name</th>
                                            <th scope="col" class="px-6 py-4">User Email</th>
                                            <th scope="col" class="px-6 py-4">User Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($users as $key => $user)
                                            <tr class="border-b bg-neutral-100 dark:border-neutral-500 dark:bg-neutral-700">
                                                <td class="whitespace-nowrap px-6 py-4 font-medium">{{ $key + 1 }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ ucwords($user->name) }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ $user->email }}</td>
                                                <td class="whitespace-nowrap px-6 py-4">{{ ucwords($user->status) }}</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    <div class="my-3">
                                        {{ $users->links() }}
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

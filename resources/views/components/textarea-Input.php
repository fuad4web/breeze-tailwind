<!-- resources/views/components/TextareaInput.php -->

@props(['id', 'name', 'class'])

<textarea
    {{ $attributes->merge(['class' => 'form-input rounded-md shadow-sm']) }}
    id="{{ $id }}"
    name="{{ $name }}"
    class="{{ $class }}"
>{{ $slot }}</textarea>

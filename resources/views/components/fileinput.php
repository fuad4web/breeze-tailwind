<!-- resources/views/components/FileInput.php -->

@props(['id', 'name', 'class', 'accept'])

<input
    type="file"
    {{ $attributes->merge(['class' => 'form-input rounded-md shadow-sm']) }}
    id="{{ $id }}"
    name="{{ $name }}"
    class="{{ $class }}"
    accept="{{ $accept }}"
>

<!-- resources/views/components/SelectInput.php -->

@props(['id', 'name', 'class', 'options'])

<select
    {{ $attributes->merge(['class' => 'form-select rounded-md shadow-sm']) }}
    id="{{ $id }}"
    name="{{ $name }}"
    class="{{ $class }}"
>
    {{ $slot }}
</select>

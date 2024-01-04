<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->word,
            'slug' => $this->faker->unique()->slug,
            'product_image' => 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg',
            'description' => $this->faker->paragraph,
            'price' => $this->faker->randomNumber(4),
            'quantity' => $this->faker->randomNumber(),
            'category_id' => function () {
                return \App\Models\Category::factory()->create()->id;
            },
        ];
    }
}

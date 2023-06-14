<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class OrderedItemsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'item' => fake()->randomElement(['Book','Notebook','Bag']),
            'quantity' => fake()-> randomElement(['250','400','500']),
            'amount' => fake()-> randomElement(['250','300','350']),
        ];
    }
}

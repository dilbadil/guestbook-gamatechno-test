<?php

use Illuminate\Database\Seeder;
use App\Guest;

class GuestTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Guest::class, 50)->create();
    }
}

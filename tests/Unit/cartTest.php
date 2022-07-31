<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithoutMiddleware;


class cartTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_example()
    {
        $this->assertTrue(true);
    }

    public function test_all_cart()
    {

        $response = $this->withHeader('Authorization', 'Bearer ' . 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMTQ0MjkxNzYzNGE0NGY2MTRjZmY5NjZiNDU5ZTYxOGM5MWVhMTk0NjkwZmZmNmMyZjYxZjcxNDQ0MGUyZTlkODg4NDRiNWM2ZmY2MjgxY2IiLCJpYXQiOjE2NTc4ODY4MzcuNTMxODIzLCJuYmYiOjE2NTc4ODY4MzcuNTMxODI0LCJleHAiOjE2ODk0MjI4MzcuNTMwMDg4LCJzdWIiOiI4Iiwic2NvcGVzIjpbXX0.XTioKVm8XurdrAaMyaLoMJd7ZUHzFwqBW5ly-VWrqjeiQvXkOTrK0NLImYlYn-_24wVyQF52IxkHgbYt026Ig81-GlnLQzZ2n5DieazFgnSpRo6qw1blLOBBUi7BDZwcElq734H8Af63t-hQCaLiEr4zP-lm17WvuBoKhMGb_uJe88piYtk8HhdW-LRQYjk-8yqHbiIKgkcsythMGKBOjvzlzJY15XfwKJAPj5V0TQSu5n_avzrmjbnMIplSZqvAce10ab7jEFoAZN3-cjutNjhJ8S7Da1YRJByFtGAkHzDYMtDr-anKjQVPzxTR45CGb9degn2tZ5Rw-0LrLIlYejc4TiKjXXW4th1h4VXRZB2A0LEtLeMYhpwI_x_94iSmZTPQLm27Jgj-XJoR_AJWMvjg-AZ2PS4tBxichYVoBfPtoxwacNaOUMxerN7V7IUs2obWTWbmCNfxfLTl8f9aRnPUJBhGbY5RT1rahH3qUJpC052hzxS0TaSLQLFb1-LoflbrcVqWQOZYaqsiQib3DE-jWme3N0VL1p-w2NSDa9v44LCAR22xJATyGurWQ_8-dvJ1gVIez81AKYOBK5uBL7241wlbFxXwkPb6PBI4qGvuy_05-asBUMT-mfwAS2Jy0EaEWoBDqNMnFIkHXVeTTWfye0BbbgxoiEMY1kn34b4')
        ->get('/api/cart');

        $response->assertStatus(200);

        // $this->assertTrue(true);
    }
}

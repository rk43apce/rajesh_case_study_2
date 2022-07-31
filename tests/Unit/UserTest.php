<?php

namespace Tests\Unit;

use Tests\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic unit test example.
     *
     * @return void
     */

    public function test_user_registration()
    {

        $response = $this->postJson('/api/register', ['email' =>  time()."@gmail.com", "password" => "admin"]);

        $response
        ->assertStatus(201);
    }


    public function test_user_login()
    {

        $response = $this->postJson('/api/auth/login', ['email' => 'admin@gmail.com', "password" => "admin"]);

        $response
            ->assertStatus(200);

        $this->assertTrue(true);
    }
}

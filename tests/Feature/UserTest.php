<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_user_registration()
    {

        $response = $this->postJson('/api/register', ['email' => "user".time()."@gmail.com", "password"=> "admin"]);
 
        $response
            ->assertStatus(201);

            $this->assertTrue(true);
    }

    public function test_user_login()
    {

        $response = $this->postJson('/api/auth/login', ['email' => "admin@gmail.com", "password"=> "admin"]);
 
        $response
            ->assertStatus(200);

            $this->assertTrue(true);
    }
}

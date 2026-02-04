<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class HelloControllerTest extends TestCase
{
    public function test_正常レスポンスは200を返す(): void
    {
        // given
        $apiPath = '/api/hello';

        // when
        $response = $this->get($apiPath);

        // then
        $response->assertOK();
        $response->assertJson(['message' => 'Hello from Laravel!']);
    }
}

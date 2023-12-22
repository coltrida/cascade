<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Services\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function listOfUsers(UserService $userService)
    {
//        return $userService->listOfUsers();
        return UserResource::collection($userService->listOfUsers());
    }
}

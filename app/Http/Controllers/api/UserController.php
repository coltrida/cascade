<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\FavoriteSongsResource;
use App\Http\Resources\UserResource;
use App\Services\SongService;
use App\Services\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function listOfUsers(UserService $userService)
    {
        return UserResource::collection($userService->listOfUsers());
    }

    public function favoriteSongsOfUser($idUser, SongService $songService)
    {
        return FavoriteSongsResource::collection($songService->myFavoriteSongs($idUser));
    }
}

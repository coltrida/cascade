<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AlbumResource;
use App\Http\Resources\ArtistResource;
use App\Http\Resources\UserResource;
use App\Services\ArtistService;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    public function listOfArtists(ArtistService $artistService)
    {
        return ArtistResource::collection($artistService->listOfArtists());
    }

    public function albumsOfArtist($idArtist, ArtistService $artistService)
    {
        return AlbumResource::collection($artistService->albumsOfArtist($idArtist));
    }

    public function listOfClients($idArtist, ArtistService $artistService)
    {
        return UserResource::collection($artistService->listOfClients($idArtist));
    }
}

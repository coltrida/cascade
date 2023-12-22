<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ArtistResource;
use App\Services\ArtistService;
use Illuminate\Http\Request;

class ArtistController extends Controller
{
    public function listOfArtists(ArtistService $artistService)
    {
        return ArtistResource::collection($artistService->listOfArtists());
    }
}

<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AlbumResource;
use App\Http\Resources\AlbumWithSongsResource;
use App\Services\AlbumService;
use Illuminate\Http\Request;

class AlbumController extends Controller
{
    public function listOfAlbums(AlbumService $albumService)
    {
        return AlbumResource::collection($albumService->listOfAlbums());
    }

    public function listOfAlbumsPaginate(AlbumService $albumService)
    {
        return $albumService->listOfAlbumsPaginate();
    }

    public function lastAlbums(AlbumService $albumService)
    {
        return AlbumResource::collection($albumService->lastCinqueAlbum());
    }

    public function albumWithSongs($idAlbum, AlbumService $albumService)
    {
        return new AlbumWithSongsResource($albumService->albumWithSongs($idAlbum));
    }
}

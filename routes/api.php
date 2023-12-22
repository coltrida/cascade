<?php

use App\Http\Controllers\api\AlbumController;
use App\Http\Controllers\api\ArtistController;
use App\Http\Controllers\api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// ------------------ Album --------------------------
Route::get('/listOfAlbums', [AlbumController::class, 'listOfAlbums']);
Route::get('/listOfAlbumsPaginate', [AlbumController::class, 'listOfAlbumsPaginate']);
Route::get('/lastAlbums', [AlbumController::class, 'lastAlbums']);
Route::get('/albumWithSongs/{idAlbum}', [AlbumController::class, 'albumWithSongs']);

// ------------------ User --------------------------
Route::get('/listOfUsers', [UserController::class, 'listOfUsers']);

// ------------------ Artist --------------------------
Route::get('/listOfArtists', [ArtistController::class, 'listOfArtists']);

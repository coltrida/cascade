<?php

use App\Http\Controllers\api\AlbumController;
use App\Http\Controllers\api\ArtistController;
use App\Http\Controllers\api\LoginController;
use App\Http\Controllers\api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// ------------------ login --------------------------
Route::post('/login', [LoginController::class, 'login']);
Route::post('/register', [LoginController::class, 'register']);

// ------------------ Album --------------------------
Route::get('/listOfAlbums', [AlbumController::class, 'listOfAlbums']);
Route::get('/listOfAlbumsPaginate', [AlbumController::class, 'listOfAlbumsPaginate']);
Route::get('/lastAlbums', [AlbumController::class, 'lastAlbums']);
Route::get('/albumWithSongs/{idAlbum}', [AlbumController::class, 'albumWithSongs']);
Route::get('/bestAlbumSellers', [AlbumController::class, 'bestAlbumSellers']);
Route::get('/myLastAlbumsBought/{idUser}', [AlbumController::class, 'myLastAlbumsBought']);

// ------------------ User --------------------------
Route::get('/listOfUsers', [UserController::class, 'listOfUsers']);

// ------------------ Artist --------------------------
Route::get('/listOfArtists', [ArtistController::class, 'listOfArtists']);
Route::get('/albumsOfArtist/{idArtist}', [ArtistController::class, 'albumsOfArtist']);
Route::get('/listOfClients/{idArtist}', [ArtistController::class, 'listOfClients']);

// ------------------ Song --------------------------
Route::get('/favoriteSongsOfUser/{idUser}', [UserController::class, 'favoriteSongsOfUser']);

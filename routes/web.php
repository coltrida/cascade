<?php

use App\Http\Controllers\ProfileController;
use App\Livewire\Admin\Albums;
use App\Livewire\Admin\Artists;
use App\Livewire\Admin\SongsOfAlbum;
use App\Livewire\Admin\Tags;
use App\Livewire\Admin\Users;
use App\Livewire\Artist\AddSongs;
use App\Livewire\Artist\MyAlbums;
use App\Livewire\Home;
use App\Livewire\User\AllArtist;
use Illuminate\Support\Facades\Route;

Route::get('/', Home::class);

//-------------------Admin------------------------------
Route::group(
    [
        'middleware' => ['auth','verifyIsAdmin'],
        'prefix' => 'admin'
    ],
    function() {
        Route::get('/users', Users::class)->name('admin.users');
        Route::get('/albums', Albums::class)->name('admin.albums');
        Route::get('/albums/{idAlbum}/songs', SongsOfAlbum::class)->name('admin.album.songs');
        Route::get('/artists', Artists::class)->name('admin.artists');
        Route::get('/tags', Tags::class)->name('admin.tags');
});

//-------------------Artist------------------------------
Route::group(
    [
        'middleware' => ['auth','verifyIsArtist'],
        'prefix' => 'artist'
    ],
    function() {
        Route::get('/home', \App\Livewire\Artist\Home::class)->name('artist.home');
        Route::get('/myAlbums', MyAlbums::class)->name('artist.myAlbums');
        Route::get('/myAlbums/{idAlbum}/addSongs', AddSongs::class)->name('artist.myAlbums.addSongs');
});

//-------------------User------------------------------
Route::group(
    [
        'middleware' => ['auth'],
        'prefix' => 'user'
    ],
    function() {
        Route::get('/home', \App\Livewire\User\Home::class)->name('user.home');
        Route::get('/allArtist', AllArtist::class)->name('user.allArtist');

});



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

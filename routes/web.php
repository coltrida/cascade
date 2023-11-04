<?php

use App\Http\Controllers\ProfileController;
use App\Livewire\Admin\Albums;
use App\Livewire\Admin\Artists;
use App\Livewire\Admin\Tags;
use App\Livewire\Admin\Users;
use App\Livewire\Home;
use Illuminate\Support\Facades\Route;

Route::get('/', Home::class);

//-------------------Admin------------------------------
Route::group(
    [
        'middleware' => ['auth','verifyIsAdmin'],
        'prefix' => 'admin'
    ],
    function() {
        Route::get('/users', Users::class);
        Route::get('/albums', Albums::class);
        Route::get('/artists', Artists::class);
        Route::get('/tags', Tags::class);
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

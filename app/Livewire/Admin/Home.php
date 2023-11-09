<?php

namespace App\Livewire\Admin;

use App\Models\Album;
use App\Models\Artist;
use App\Models\User;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $nrUser = User::utenti()->count();
        $nrArtist = Artist::count();
        $albums = Album::withCount('userSales')->get();

        return view('livewire.admin.home', [
            'nrUser' => $nrUser,
            'nrArtist' => $nrArtist,
            'nrAlbums' => $albums->count(),
            'nrAlbumSales' => $albums->sum('user_sales_count'),
        ]);
    }
}

<?php

namespace App\Livewire\User;

use App\Models\Artist;
use Livewire\Component;

class AlbumsOfArtist extends Component
{

    public $artist;

    public function mount($idArtist)
    {
        $this->artist = Artist::with(['user','albums' => function($a){
            $a->authorized()->withCount('songs')->with('userSales');
        }])->find($idArtist);
    }

    public function render()
    {
        return view('livewire.user.albums-of-artist');
    }
}

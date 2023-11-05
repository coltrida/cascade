<?php

namespace App\Livewire\Artist;

use App\Models\Album;
use Livewire\Component;

class AddSongs extends Component
{
    public $album;

    public function mount($idAlbum)
    {
        $this->album = Album::with('songs')->find($idAlbum);
    }

    public function render()
    {
        return view('livewire.artist.add-songs');
    }
}

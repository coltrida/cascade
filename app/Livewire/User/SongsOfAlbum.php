<?php

namespace App\Livewire\User;

use App\Livewire\LettoreAudio;
use App\Models\Album;
use Livewire\Component;

class SongsOfAlbum extends Component
{
    public $album;
    public $isSongInPlay;
    public $albumBought;

    public function playSong($idSong)
    {
        $this->isSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function mount($idAlbum)
    {
        $this->album = Album::with('songs', 'userSales')->find($idAlbum);
        if ($this->album->userSales->contains('id', auth()->user()->id)){
            $this->albumBought = true;
        }
    }

    public function render()
    {
        return view('livewire.user.songs-of-album');
    }
}

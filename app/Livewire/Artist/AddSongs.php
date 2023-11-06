<?php

namespace App\Livewire\Artist;

use App\Livewire\LettoreAudio;
use App\Models\Album;
use Livewire\Component;

class AddSongs extends Component
{
    public $album;
    public $isSongInPlay;

    public function playSong($idSong)
    {
        $this->isSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function mount($idAlbum)
    {
        $this->album = Album::with('songs')->find($idAlbum);
    }

    public function render()
    {
        return view('livewire.artist.add-songs');
    }
}

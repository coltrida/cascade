<?php

namespace App\Livewire;

use App\Livewire\User\SongsOfAlbum;
use App\Models\Song;
use App\Models\User;
use Livewire\Component;

class LettoreAudio extends Component
{
    public $canzoneDaSuonare;
    public $idCanzoneDaSuonare;

    public function getListeners()
    {
        return [
            "playsong" => 'play',
        ];
    }

    public function addToFavorites()
    {
        $user = User::with('favorites')->find(auth()->user()->id);
        $user->favorites()->toggle($this->idCanzoneDaSuonare);
        $this->dispatch('addSongToFavorite', idAlbum: Song::find($this->idCanzoneDaSuonare)->album_id)
            ->to(SongsOfAlbum::class);
    }

    public function play($idSong)
    {
        $this->idCanzoneDaSuonare = $idSong;
        $this->canzoneDaSuonare = '/storage/songs/'.$idSong.'.mp3';

    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

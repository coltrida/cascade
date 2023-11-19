<?php

namespace App\Livewire\User;

use App\Livewire\LettoreAudio;
use App\Models\Album;
use App\Models\User;
use Livewire\Component;

class SongsOfAlbum extends Component
{
    public $album;
    public $user;
    public $isSongInPlay;
    public $albumBought;
    public $canzoneInPlay = false;

    public function getListeners()
    {
        return [
            "addSongToFavorite" => 'addSongToFavorite',
        ];
    }

    public function addSongToFavorite($idAlbum)
    {
        $this->caricaSongsOfAlbum($idAlbum);
    }

    public function playSong($idSong)
    {
        $this->canzoneInPlay = !$this->canzoneInPlay;
        $this->isSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    private function caricaSongsOfAlbum($idAlbum)
    {
        $this->album = Album::with(['userSales', 'songs' => function($s){
            $s->with('favorites');
        }])->find($idAlbum);
        if ($this->album->userSales->contains('id', auth()->user()->id)){
            $this->albumBought = true;
        }
        $this->user = User::with('favorites')->find(auth()->user()->id);
    }

    public function mount($idAlbum)
    {
        $this->caricaSongsOfAlbum($idAlbum);
    }

    public function render()
    {
        return view('livewire.user.songs-of-album');
    }
}

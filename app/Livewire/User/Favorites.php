<?php

namespace App\Livewire\User;

use App\Livewire\LettoreAudio;
use App\Models\User;
use Livewire\Component;

class Favorites extends Component
{
    public $idSongInPlay;
    public $idUser;
    public $user;

    public function getListeners()
    {
        return [
            "addSongToFavorite" => 'addSongToFavorite',
        ];
    }

    public function addSongToFavorite($idAlbum)
    {
        $this->caricaSongs();
    }

    private function caricaSongs()
    {
        $this->user = User::with(['favorites' => function($s){
            $s->with(['album' => function($al){
                $al->with(['artist' => function($art){
                    $art->with('user');
                }]);
            }]);
        }])->find($this->idUser);
    }

    public function mount()
    {
        $this->idUser = auth()->user()->id;
        $this->caricaSongs();
    }

    public function playSong($idSong)
    {
        $this->idSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function render()
    {
        return view('livewire.user.favorites');
    }
}

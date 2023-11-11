<?php

namespace App\Livewire\User;

use App\Livewire\LettoreAudio;
use App\Models\User;
use Livewire\Component;

class Favorites extends Component
{
    public $idSongInPlay;

    public function playSong($idSong)
    {
        $this->idSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function render()
    {
        return view('livewire.user.favorites', [
            'songFavorites' => User::with(['favorites' => function($s){
                $s->with(['album' => function($al){
                    $al->with(['artist' => function($art){
                        $art->with('user');
                    }]);
                }]);
            }])->find(auth()->user()->id)->favorites
        ]);
    }
}

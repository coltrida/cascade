<?php

namespace App\Livewire;

use App\Livewire\User\SongsOfAlbum;
use App\Models\Song;
use App\Models\User;
use Livewire\Component;

class LettoreAudio extends Component
{
    public $percorsoCanzoneDaSuonare;
    public $idCanzoneDaSuonare = 0;
    public $canzoneAttualmenteInPlay;
    public $listaSongsDaSuonare = [];
    public $canzoneInPlay = false;

    public function getListeners()
    {
        return [
            "playsong" => 'play',
            "shuffleAllMusic" => 'shuffleAllMusic',
            "playBtn" => 'playBtn',
            "pauseBtn" => 'pauseBtn',
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
        $this->canzoneAttualmenteInPlay = Song::with('album')->find($idSong);

        if ($this->canzoneInPlay){
            $this->dispatch('pausa');
        } else {
            $this->dispatch('suona', idSong:$idSong);
        }
        $this->canzoneInPlay = !$this->canzoneInPlay;
    }

    public function playBtn()
    {
        $this->canzoneInPlay = !$this->canzoneInPlay;
        $this->dispatch('riprendi');
    }

    public function pauseBtn()
    {
        $this->canzoneInPlay = !$this->canzoneInPlay;
        $this->dispatch('pausa');
    }

    public function shuffleAllMusic()
    {
/*        $allMyAlbums = User::with(['albumSales' => function($a){
            $a->with(['songs', 'artist' => function($art){
                $art->with('user');
            }]);
        }])->find(auth()->user()->id)->albumSales;

        $this->caricaCanzoniDaSuonare();

        foreach ($allMyAlbums as $album) {
            $this->listaSongsDaSuonare = $this->listaSongsDaSuonare->concat($album->songs);
        }

        foreach ($this->listaSongsDaSuonare as $song) {
            $this->play($song->id);
        }*/

    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

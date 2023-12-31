<?php

namespace App\Livewire;

use App\Livewire\User\SongsOfAlbum;
use App\Models\Song;
use App\Models\User;
use Livewire\Component;

class LettoreAudio extends Component
{
    public $visualizzaLettore = false;
    public $idCanzoneDaSuonare = 0;
    public $canzoneAttualmenteInPlay;
    public $listaSongsDaSuonare = [];
    public $canzoneInPlay = false;
    public $inShuffleMode = false;
    public $canzoneAttualmenteInPlayIsFavorite = false;

    public function getListeners()
    {
        return [
            "playsong" => 'play',
            "shuffleAllMusic" => 'shuffleAllMusic',
            "playBtn" => 'playBtn',
            "pauseBtn" => 'pauseBtn',
            "visualizzaNuovaCanzonaSuonata" => 'visualizzaNuovaCanzonaSuonata',
        ];
    }

/*    public function addToFavorites()
    {
        if ($this->idCanzoneDaSuonare){
            $user = User::with('favorites')->find(auth()->user()->id);
            $user->favorites()->toggle($this->idCanzoneDaSuonare);
            $this->dispatch('addSongToFavorite', idAlbum: Song::find($this->idCanzoneDaSuonare)->album_id);
            $this->canzoneAttualmenteInPlayIsFavorite = !$this->canzoneAttualmenteInPlayIsFavorite;
        }
    }*/

    public function play($idSong)
    {
        $this->visualizzaLettore = true;
        $this->idCanzoneDaSuonare = $idSong;
        $this->canzoneAttualmenteInPlay = Song::with('album', 'favorites')->find($idSong);

        $this->canzoneAttualmenteInPlayIsFavorite =
            $this->canzoneAttualmenteInPlay->favorites->contains('id', auth()->user()->id);

        if ($this->canzoneInPlay){
            $this->dispatch('pausa');
        } else {
            $this->dispatch('suona', idSong:$idSong);
        }
        $this->canzoneInPlay = !$this->canzoneInPlay;
    }

    public function playBtn()
    {
        if ($this->idCanzoneDaSuonare){
            $this->canzoneInPlay = !$this->canzoneInPlay;
            $this->dispatch('riprendi');
        }

    }

    public function pauseBtn()
    {
        $this->canzoneInPlay = !$this->canzoneInPlay;
        $this->dispatch('pausa');
    }

    private function caricaTutteLeMieCanzoni()
    {
        $allMyAlbums = User::with(['albumSales' => function($a){
            $a->with(['songs' => function($s){
                $s->with(['album' => function($a){
                    $a->with(['artist' => function($ar){
                        $ar->with('user');
                    }]);
                }]);
            }]);
        }])->find(auth()->user()->id)->albumSales;

        $this->listaSongsDaSuonare = collect();
        foreach ($allMyAlbums as $album) {
            $this->listaSongsDaSuonare = $this->listaSongsDaSuonare->concat($album->songs);
        }
    }

    public function shuffleAllMusic()
    {
        if (count($this->listaSongsDaSuonare) == 0 ){
            $this->visualizzaLettore = true;
            $this->canzoneInPlay = true;
            $this->caricaTutteLeMieCanzoni();
        }

        if ($this->inShuffleMode){
            $this->dispatch('shuffleOFF');
        } else {
            $this->dispatch('shuffleON', listaCanzoniDaSuonare:$this->listaSongsDaSuonare);;
        }

        $this->inShuffleMode = !$this->inShuffleMode;
    }

    public function visualizzaNuovaCanzonaSuonata(Song $song)
    {
        $this->canzoneAttualmenteInPlay = $song;
//        dd();
    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

<?php

namespace App\Livewire;

use App\Livewire\User\SongsOfAlbum;
use App\Models\Song;
use App\Models\User;
use Livewire\Component;

class LettoreAudio extends Component
{
    public $percorsoCanzoneDaSuonare;
    public $idCanzoneDaSuonare;
    public $canzoneDaSuonare;
    public $listaSongsDaSuonare = [];

    public function getListeners()
    {
        return [
            "playsong" => 'play',
            "shuffleAllMusic" => 'shuffleAllMusic',
        ];
    }

    public function mount()
    {
        $this->caricaCanzoniDaSuonare();
        if (isset(auth()->user()->id)){
            $allMyAlbums = User::with(['albumSales' => function($a){
                $a->with(['songs', 'artist' => function($art){
                    $art->with('user');
                }]);
            }])->find(auth()->user()->id)->albumSales;

            foreach ($allMyAlbums as $album) {
                $this->listaSongsDaSuonare = $this->listaSongsDaSuonare->concat($album->songs);
            }
        }

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
        $this->caricaCanzoniDaSuonare();

        $this->idCanzoneDaSuonare = $idSong;
        $this->canzoneDaSuonare = Song::with(['album' => function($a){
            $a->with(['artist' => function($art){
                $art->with('user');
            }]);
        }])->find($idSong);
        $this->listaSongsDaSuonare->push($this->canzoneDaSuonare);
        $this->percorsoCanzoneDaSuonare = '/storage/songs/'.$idSong.'.mp3';
    }

    public function caricaCanzoniDaSuonare()
    {
        $this->listaSongsDaSuonare = collect();
    }

    public function shuffleAllMusic()
    {
        $allMyAlbums = User::with(['albumSales' => function($a){
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
        }

    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

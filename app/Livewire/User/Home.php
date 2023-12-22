<?php

namespace App\Livewire\User;

use App\Livewire\LettoreAudio;
use App\Models\Album;
use App\Models\Song;
use App\Models\User;
use App\Services\AlbumService;
use Livewire\Component;
use Livewire\WithPagination;

class Home extends Component
{
    use WithPagination;

    public $searchText;
    public $idSongInPlay;
    public $viewResult = null;

    public function search()
    {
        $this->viewResult = true;
        $this->resetPage();
    }

    public function resetSearch()
    {
        $this->viewResult = false;
        $this->searchText = '';
        $this->resetPage();
    }

    public function playSong($idSong)
    {
        $this->idSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function render(AlbumService $albumService)
    {
        $idUser = auth()->user()->id;

        return view('livewire.user.home', [
            'myLastAlbums' => $albumService->myLastAlbumsComprati($idUser),
            /*'myFavorites' => User::with(['favorites' => function($s){
                    $s->with(['album' => function($al){
                        $al->with(['artist' => function($ar){
                            $ar->with('user');
                        }]);
                    }]);
                }])->find(auth()->user()->id)->favorites,*/
            'albums' => Album::where('name', $this->searchText)
                ->with(['artist' => function($a){
                    $a->with('user');
                }])->paginate(3, pageName: 'albums'),
            'artists' => User::artisti()->where('name', $this->searchText)->orWhere('surname', $this->searchText)
                ->with('artist.tag')->paginate(3, pageName: 'artists'),
            'songs' => Song::with(['album' => function($a){
                    $a->with('userSales');
                }])
                ->where('name', $this->searchText)
                ->paginate(3, pageName: 'songs')
        ]);
    }
}

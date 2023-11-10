<?php

namespace App\Livewire\User;

use App\Models\Album;
use App\Models\Song;
use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Home extends Component
{
    use WithPagination;

    public $searchText;
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

    }

    public function render()
    {
        return view('livewire.user.home', [
            'myLastAlbums' => User::with(['albumSales' => function($a){
                $a->limit(7)->get();
            }])
                ->find(auth()->user()->id)->albumSales,
            'albums' => Album::where('name', 'like', '%'.$this->searchText.'%')
                ->with(['artist' => function($a){
                    $a->with('user');
                }])->paginate(3, pageName: 'albums'),
            'artists' => User::artisti()->where('name', 'like', '%'.$this->searchText.'%')
                ->with('artist.tag')->paginate(3, pageName: 'artists'),
            'songs' => Song::with(['album' => function($a){
                $a->with('userSales');
            }])
                ->where('name', 'like', '%'.$this->searchText.'%')
                ->paginate(3, pageName: 'songs')
        ]);
    }
}

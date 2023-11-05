<?php

namespace App\Livewire\Artist;

use App\Models\Album;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class MyAlbums extends Component
{

    public $name;
    public $price;

    public function save()
    {
        Album::create([
            'artist_id' => Auth::user()->artist->id,
            'name' => $this->name,
            'price' => $this->price,
        ]);
        $this->name = '';
        $this->price = '';
    }

    public function render()
    {
        return view('livewire.artist.my-albums', [
            'user' => User::with(['artist' => function($ar){
                $ar->with('albums');
            }])
                ->find(Auth::user()->id)
        ]);
    }
}

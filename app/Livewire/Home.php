<?php

namespace App\Livewire;

use App\Models\Album;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.home', [
            'latestAlbum' => Album::with(['artist' => function($a){
                $a->with('user');
            }])->latest()->limit(7)->get()
        ]);
    }
}

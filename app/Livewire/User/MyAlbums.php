<?php

namespace App\Livewire\User;

use App\Models\User;
use Livewire\Component;

class MyAlbums extends Component
{
    public function render()
    {
        return view('livewire.user.my-albums', [
            'myAlbums' => User::with(['albumSales' => function($a){
                $a->with(['artist' => function($art){
                    $art->with('user');
                }])->withCount('songs');
            }])->find(auth()->user()->id)->albumSales
        ]);
    }
}

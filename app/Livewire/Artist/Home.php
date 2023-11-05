<?php

namespace App\Livewire\Artist;

use App\Models\User;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.artist.home', [
            'user' => User::with(['artist' => function($a){
                $a->withCount('albums')
                    ->withCount('userSales')
                    ->with(['albums' => function($alb){
                        $alb->withCount('userSales');
                    }]);
            }])
                ->find(auth()->id())
        ]);
    }
}

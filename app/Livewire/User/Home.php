<?php

namespace App\Livewire\User;

use App\Models\User;
use Livewire\Component;

class Home extends Component
{
    public $searchText;

    public function search()
    {

    }

    public function resetSearch()
    {

    }

    public function render()
    {
        return view('livewire.user.home', [
            'myLastAlbums' => User::with(['albumSales' => function($a){
                $a->limit(7)->get();
            }])
                ->find(auth()->user()->id)->albumSales
        ]);
    }
}

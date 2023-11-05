<?php

namespace App\Livewire\Admin;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Artists extends Component
{
    use WithPagination;

    public function render()
    {
        return view('livewire.admin.artists', [
            'artists' => User::artisti()->with(['artist' => function($a){
                $a->withCount('albums')->with('tag');
            }])->simplePaginate(3)
        ]);
    }
}

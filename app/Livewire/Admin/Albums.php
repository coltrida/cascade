<?php

namespace App\Livewire\Admin;

use App\Models\Album;
use Livewire\Component;
use Livewire\WithPagination;

class Albums extends Component
{
    use WithPagination;

    public function render()
    {
        return view('livewire.admin.albums', [
            'albums' => Album::with(['artist' => function($a){
                $a->with('user');
            }])->simplePaginate(3)
        ]);
    }
}

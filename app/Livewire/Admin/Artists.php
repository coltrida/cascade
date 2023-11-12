<?php

namespace App\Livewire\Admin;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Artists extends Component
{
    use WithPagination;

    public $searchText = '';

    public function search()
    {
        $this->resetPage();
    }

    public function resetSearch()
    {
        $this->searchText = '';
        $this->resetPage();
    }

    public function render()
    {
        return view('livewire.admin.artists', [
            'artists' => User::artisti()
                ->with(['artist' => function($a){
                    $a->withCount('albums')->with('tag');
            }])
                ->when($this->searchText, function ($query){
                    $query->where('name', 'like', '%'.$this->searchText.'%')
                        ->orWhere('surname', 'like', '%'.$this->searchText.'%');
                })
                ->paginate(3)
        ]);
    }
}

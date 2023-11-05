<?php

namespace App\Livewire\Admin;

use App\Models\Album;
use Livewire\Component;
use Livewire\WithPagination;

class Albums extends Component
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
        return view('livewire.admin.albums', [
            'albums' => Album::where('name', 'like', '%'.$this->searchText.'%')
                ->with(['artist' => function($a){
                $a->with('user');
            }])->paginate(3)
        ]);
    }
}

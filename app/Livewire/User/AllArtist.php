<?php

namespace App\Livewire\User;

use App\Models\Artist;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Component;
use Livewire\WithPagination;

class AllArtist extends Component
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
        return view('livewire.user.all-artist', [
            'artists' => Artist::whereHas('user', function (Builder $query) {
                $query->where('name', 'like', '%'.$this->searchText.'%');
                })
                ->with('user', 'tag')
                ->withCount(['albums' => function($alb){
                    $alb->authorized();
                }])
                ->paginate(3)
        ]);
    }
}

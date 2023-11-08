<?php

namespace App\Livewire\User;

use App\Models\Artist;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Component;
use Livewire\WithPagination;

class AllArtist extends Component
{
    use WithPagination;

    public $searchText = '';
    public $searchTag = null;

    public function search()
    {
        $this->resetPage();
    }

    public function resetSearch()
    {
        $this->searchText = '';
        $this->resetPage();
    }

    public function selectTag($idTag)
    {
        $this->searchTag = $idTag;
    }

    public function render()
    {
        return view('livewire.user.all-artist', [
            'artists' => Artist::whereHas('user', function (Builder $query) {
                    $query->where('name', 'like', '%'.$this->searchText.'%');
                })
                ->when($this->searchTag, function ($query){
                    $query->where('tag_id', $this->searchTag);
                })
                ->with('user', 'tag')
                ->withCount(['albums' => function($alb){
                    $alb->authorized();
                }])
                ->paginate(3),
            'tags' => Tag::orderBy('name')->get()
        ]);
    }
}

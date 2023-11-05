<?php

namespace App\Livewire\Admin;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Users extends Component
{
    use WithPagination;

    public $searchText = '';

    public function search()
    {
        $this->resetPage();
    }

    public function render()
    {
        return view('livewire.admin.users', [
            'users' => User::utenti()
                ->where('name', 'like', '%'.$this->searchText.'%')
                ->simplePaginate(3)
        ]);
    }
}

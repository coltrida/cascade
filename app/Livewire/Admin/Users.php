<?php

namespace App\Livewire\Admin;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Users extends Component
{
    use WithPagination;

    public function render()
    {
        return view('livewire.admin.users', [
            'users' => User::utenti()->simplePaginate(3)
        ]);
    }
}

<?php

namespace App\Livewire\Admin;

use App\Models\Tag;
use Livewire\Component;

class Tags extends Component
{
    public function render()
    {
        return view('livewire.admin.tags', [
            'tags' => Tag::orderBy('name')->get()
        ]);
    }
}

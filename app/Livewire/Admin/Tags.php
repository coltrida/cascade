<?php

namespace App\Livewire\Admin;

use App\Models\Tag;
use Livewire\Component;

class Tags extends Component
{

    public $name;

    public function save()
    {
        Tag::create([
            'name' => $this->name
        ]);
        $this->name = '';
    }

    public function delete($idTag)
    {
        Tag::find($idTag)->delete();
    }

    public function render()
    {
        return view('livewire.admin.tags', [
            'tags' => Tag::orderBy('name')->get()
        ]);
    }
}

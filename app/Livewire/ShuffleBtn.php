<?php

namespace App\Livewire;

use Livewire\Component;

class ShuffleBtn extends Component
{
    public function shuffleClick()
    {
        $this->dispatch('shuffleAllMusic')->to(LettoreAudio::class);
    }

    public function render()
    {
        return view('livewire.shuffle-btn');
    }
}

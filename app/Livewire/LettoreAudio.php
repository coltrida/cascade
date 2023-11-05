<?php

namespace App\Livewire;

use Livewire\Component;

class LettoreAudio extends Component
{
    public $canzoneDaSuonare;

    public function getListeners()
    {
        return [
            "playsong" => 'play',
        ];
    }

    public function play($idSong)
    {
        dd($idSong);
    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

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
        $this->canzoneDaSuonare = '/storage/songs/'.$idSong.'.mp3';

    }

    public function render()
    {
        return view('livewire.lettore-audio');
    }
}

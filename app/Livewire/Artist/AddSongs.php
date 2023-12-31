<?php

namespace App\Livewire\Artist;

use App\Livewire\LettoreAudio;
use App\Mail\AlbumVisibled;
use App\Models\Album;
use App\Models\Song;
use Illuminate\Support\Facades\Mail;
use Livewire\Attributes\Rule;
use Livewire\Component;
use Livewire\WithFileUploads;

class AddSongs extends Component
{
    use WithFileUploads;

    #[Rule('max:5120')] // 5MB Max
    public $song;

    public $name;
    public $album;
    public $isSongInPlay;

    public function save()
    {
        $song = Song::create([
            'name' => $this->name,
            'album_id' => $this->album->id,
        ]);
        $this->song->storePubliclyAs('songs', $song->id.'.mp3', 'public');

        if (Album::withCount('songs')->find($this->album->id)->songs_count == 8){
            $this->album->visible = 1;
            $this->album->save();
            Mail::to('coltrida@gmail.com')->send(new AlbumVisibled($this->album));
        }

        $this->name = '';
        $this->song = '';
    }

    public function playSong($idSong)
    {
        $this->isSongInPlay = $idSong;
        $this->dispatch('playsong', idSong: $idSong)->to(LettoreAudio::class);
    }

    public function mount($idAlbum)
    {
        $this->album = Album::with('songs')->find($idAlbum);
    }

    public function render()
    {
        return view('livewire.artist.add-songs');
    }
}

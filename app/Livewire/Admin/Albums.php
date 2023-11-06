<?php

namespace App\Livewire\Admin;

use App\Mail\AlbumAuthorized;
use App\Models\Album;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;
use Livewire\WithPagination;

class Albums extends Component
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

    public function authorizeAlbum($idAlbum)
    {
        $album = Album::with(['artist' => function($art){
            $art->with('user');
        }])->find($idAlbum);
        $album->authorized = 1;
        $album->save();
        $address = $album->artist->user->email;
        Mail::to($address)->send(new AlbumAuthorized($album));
    }

    public function render()
    {
        return view('livewire.admin.albums', [
            'albums' => Album::where('name', 'like', '%'.$this->searchText.'%')
                ->with(['artist' => function($a){
                $a->with('user');
            }])->paginate(3)
        ]);
    }
}

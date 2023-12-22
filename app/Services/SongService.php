<?php

namespace App\Services;

use App\Models\Song;
use App\Models\User;

class SongService
{
    public function countOfSongs()
    {
        return Song::count();
    }

    public function myFavoriteSongs($idUser)
    {
        return User::with(['favorites' => function($s){
            $s->with(['album' => function($al){
                $al->with(['artist' => function($ar){
                    $ar->with('user');
                }]);
            }]);
        }])->find($idUser)->favorites;
    }
}

<?php

namespace Database\Seeders;

use App\Models\Artist;
use App\Models\Tag;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class ArtistSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $artists = User::where('role', 'artist')->get();
        $idTags = Tag::all()->pluck('id')->toArray();
        foreach ($artists as $artist){
            Artist::create([
                'user_id' => $artist->id,
                'tag_id' => \Arr::random($idTags),
                'emailPaypal' => "sb-e".$artist->id."jum27762599@business.example.com",
                'created_at' => fake()->dateTimeBetween('-1 year')
            ]);
        }
    }
}

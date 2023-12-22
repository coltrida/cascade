<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AlbumWithSongsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'name' => $this->name,
            'artist' => $this->artist->user->fullname,
            'cover' => $this->cover,
            'songs' => SongResource::collection($this->songs)
        ];
    }
}

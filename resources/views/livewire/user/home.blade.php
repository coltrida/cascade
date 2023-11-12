<div class="container">
    <section id="user-search" class="my-4">
        <div class="d-flex justify-content-end">
            <div class="d-flex">
                <input type="text" wire:model="searchText" wire:keydown.enter="search"
                       class="form-control border-2" placeholder="search">
                <button class="btn btn-secondary" wire:click="search">search</button>
                <button class="btn btn-warning" wire:click="resetSearch">reset</button>
            </div>
        </div>
    </section>

    <section class="latest-albums">
        <h2>My Last Albums</h2>
        <div class="d-flex justify-content-between">
            @foreach($myLastAlbums as $album)
                <div class="mx-2">
                    <a href="{{route('user.allArtist.albums.songs', ['idArtist' => $album->artist_id, 'idAlbum' => $album->id])}}">
                        <img  src="{{asset($album->cover)}}" alt="">
                        <p>{{$album->name}}</p>
                        <p>{{$album->artist->user->fullname}}</p>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

    <section id="my-favourites" style="margin-top: 60px">
        <h2>My Favorites</h2>
        <div class="my-favourites">
            @foreach($myFavorites as $song)
                <div class="mx-2">
                    <a wire:click="playSong({{ $song->id }})" style="cursor: pointer">
                        <img src="{{asset('img/song.jpg')}}" alt="">
                        <p>{{$song->name}}</p>
                        <p>{{$song->album->name}}</p>
                        <p>{{$song->album->artist->user->fullname}}</p>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

    <section id="my-favourites" style="margin-top: 60px">
        <h2>Suggested for You</h2>
        <div class="my-favourites">
            @foreach($myFavorites as $song)
                <div class="mx-2">
                    <a wire:click="playSong({{ $song->id }})" style="cursor: pointer">
                        <img src="{{asset('img/song.jpg')}}" alt="">
                        <p>{{$song->name}}</p>
                        <p>{{$song->album->name}}</p>
                        <p>{{$song->album->artist->user->fullname}}</p>
                    </a>
                </div>
            @endforeach
        </div>
    </section>

    @if($viewResult)
        <section>
            @if($artists->count() > 0)
                <h3>Artists</h3>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Country</th>
                        <th scope="col">Tag</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($artists as $item)
                        <tr>
                            <th scope="row">{{$item->artist->id}}</th>
                            <td>{{$item->fullname}}</td>
                            <td>{{$item->country}}</td>
                            <td>{{$item->artist->tag->name}}</td>
                            <td>
                                <a href="{{route('user.allArtist.albums', $item->artist->id)}}" wire:navigate class="btn btn-primary">Albums</a>
                            </td>
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="3">{{ $artists->links() }}</td>
                    </tr>
                    </tbody>
                </table>
            @endif

            @if($albums->count() > 0)
                <h3>Albums</h3>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Artist</th>
                    <th scope="col">Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($albums as $item)
                    <tr>
                        <th scope="row">{{$item->id}}</th>
                        <td>{{$item->name}}</td>
                        <td>{{$item->artist->user->fullname}}</td>
                        <td>€ {{$item->price}}</td>
                        <td>
                            <a href="{{route('user.allArtist.albums.songs',
                                ['idArtist' => $item->artist_id, 'idAlbum' => $item->id])}}"
                                        wire:navigate class="btn btn-primary">Songs</a>
                        </td>
                    </tr>
                @endforeach
                <tr>
                    <td colspan="3">{{ $albums->links() }}</td>
                </tr>
                </tbody>
            </table>
            @endif

            @if($songs->count() > 0)
                <h3>Songs</h3>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Album</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($songs as $item)
                        <tr>
                            <th scope="row">{{$item->id}}</th>
                            <td>
                                {{$item->name}}
                            </td>
                            <td>
                                {{$item->album->name}}
                            </td>
                            <td>
                                @if($item->album->userSales->contains('id', auth()->user()->id))
                                    <button wire:click="playSong({{ $item->id }})"
                                            class="btn btn-primary" style="width: 50px">
                                        @if($item->id == $idSongInPlay)
                                            <i class="bi bi-pause-circle"></i>
                                        @else
                                            <i class="bi bi-play-circle"></i>
                                        @endif
                                    </button>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                    <tr>
                        <td colspan="3">{{ $songs->links() }}</td>
                    </tr>
                    </tbody>
                </table>
            @endif
        </section>
    @endif
</div>

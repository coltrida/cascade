<div class="container">
    <section class="my-4">
        <div class="d-flex justify-content-end">
            <div class="d-flex">
                <input type="text" wire:model="searchText" class="form-control border-2" placeholder="search">
                <button class="btn btn-primary" wire:click="search">search</button>
                <button class="btn btn-warning" wire:click="resetSearch">reset</button>
            </div>
        </div>
    </section>

    <section>
        <h2>My Last Albums - {{$viewResult}}</h2>
        <div class="d-flex justify-content-center">
            @foreach($myLastAlbums as $album)
                <div>
                    <a href=""><img width="120" src="{{asset($album->cover)}}" alt="">
                        <p>{{$album->name}}</p>
                        <p>{{$album->artist->user->name}}</p>
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
                            <th scope="row">{{$item->id}}</th>
                            <td>{{$item->name}}</td>
                            <td>{{$item->country}}</td>
                            <td>{{$item->artist->tag->name}}</td>
                            <td>
                                <a href="" class="btn btn-primary">Albums</a>
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
                        <td>{{$item->artist->user->name}}</td>
                        <td>€ {{$item->price}}</td>
                        <td>
                            <a href="" class="btn btn-primary">Songs</a>
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
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach ($songs as $item)
                        <tr>
                            <th scope="row">{{$item->id}}</th>
                            <td>{{$item->name}}</td>
                            <td>
                                @if($albumBought)
                                    <button wire:click="playSong({{ $item->id }})"
                                            class="btn btn-primary" style="width: 50px">
                                        @if($item->id == $isSongInPlay)
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

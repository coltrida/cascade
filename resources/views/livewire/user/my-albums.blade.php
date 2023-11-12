<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>My Albums</h2>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Cover</th>
            <th scope="col">Artist</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($myAlbums as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>
                    <img width="110" src="{{$item->cover}}" alt="cover">
                </td>
                <td>{{$item->artist->user->name}}</td>
                <td>
                    <a class="btn btn-success position-relative" href="{{route('user.allArtist.albums.songs',
                            ['idArtist' => $item->artist_id, 'idAlbum' => $item->id])}}" wire:navigate>
                        View Songs
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            {{$item->songs_count}}
                        </span>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

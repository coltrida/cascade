<div class="container">
    <h2>Favorites</h2>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Album</th>
            <th scope="col">Artist</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($user->favorites as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>{{$item->album->name}}</td>
                <td>{{$item->album->artist->user->name}}</td>
                <td>
                    <button wire:click="playSong({{ $item->id }})"
                            class="btn btn-primary" style="width: 50px">
                        @if($item->id == $idSongInPlay)
                            <i class="bi bi-pause-circle"></i>
                        @else
                            <i class="bi bi-play-circle"></i>
                        @endif
                    </button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

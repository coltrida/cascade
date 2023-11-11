<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>
            Song of Album: {{$album->name}}
        </h2>
        <a href="{{ URL::previous() }}" wire:navigate class="btn btn-warning">
            back
        </a>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Favorite</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($album->songs as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>
                    @if($user->favorites->contains('id', $item->id))
                        <i style="color: green; font-size: 22px" class="bi bi-check-square"></i>
                    @endif
                </td>
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
        </tbody>
    </table>
</div>


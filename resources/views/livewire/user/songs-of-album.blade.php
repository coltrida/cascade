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
                        <i style="color: red; font-size: 24px" class="bi bi-heart-fill"></i>
                    @endif
                </td>
                <td>
                    @if($albumBought)
                    <button wire:click="playSong({{ $item->id }})"
                            class="btn btn-primary" style="width: 50px">
                        @if($item->id == $isSongInPlay && $canzoneInPlay)
                            <i class="bi bi-stop-circle"></i>
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


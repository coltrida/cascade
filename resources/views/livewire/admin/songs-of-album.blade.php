<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>
            Song of Album: {{$album->name}}
            @if($album->visible)
                <i style="color: green" class="bi bi-check-square"></i>
            @else
                <i style="color: red" class="bi bi-ban"></i>
            @endif
        </h2>
        @if(!$album->visible)
            <form wire:submit="save" class="d-flex">
                <input type="text" wire:model="name" class="form-control border-2" placeholder="song name">
                <input class="form-control" type="file" id="formFile">
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        @endif
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($album->songs as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>
                    <button wire:click="playSong({{ $item->id }})"
                            class="btn btn-primary" style="width: 50px">
                        @if($item->id == $isSongInPlay)
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

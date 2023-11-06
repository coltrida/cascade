<div class="container">
    <div class="d-flex justify-content-between my-3">
    <h2>My Albums</h2>
    <form wire:submit="save" class="d-flex">
        <input type="text" wire:model="name" class="form-control border-2" placeholder="album name">
        <input type="text" style="width: 150px" wire:model="price" class="form-control border-2 mx-2" placeholder="price">
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">price</th>
            <th scope="col">visible</th>
            <th scope="col">authorized</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($user->artist->albums as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>{{$item->price}}</td>
                <td>
                    @if($item->visible)
                        <i style="color: green" class="bi bi-check-square"></i>
                    @else
                        <i style="color: red" class="bi bi-ban"></i>
                    @endif
                </td>
                <td>
                    @if($item->authorized)
                        <i style="color: green" class="bi bi-check-square"></i>
                    @else
                        <i style="color: red" class="bi bi-ban"></i>
                    @endif
                </td>
                <td>
                    @if($item->visible)
                        <a class="btn btn-success position-relative" href="{{route('artist.myAlbums.addSongs', $item->id)}}" wire:navigate>
                            View Songs
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                {{$item->songs_count}}
                            </span>
                        </a>
                    @else
                        <a class="btn btn-primary position-relative" href="{{route('artist.myAlbums.addSongs', $item->id)}}" wire:navigate>
                            Add Songs
                            <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-warning">
                                {{$item->songs_count}}
                            </span>
                        </a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

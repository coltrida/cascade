<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>My Albums</h2>
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
        @foreach ($artist->albums as $item)
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


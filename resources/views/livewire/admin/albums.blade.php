<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>Albums ({{$albums->total()}})</h2>
        <div class="d-flex">
            <input type="text" wire:model="searchText" class="form-control border-2" placeholder="search">
            <button class="btn btn-primary" wire:click="search">search</button>
            <button class="btn btn-warning" wire:click="resetSearch">reset</button>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Artist</th>
            <th scope="col">Price</th>
            <th scope="col">Visible</th>
            <th scope="col">Authorized</th>
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
                    <a href="{{route('admin.album.songs', $item->id)}}" class="btn btn-success" style="width: 100px" >Songs</a>
                    @if(!$item->authorized)
                        <button class="btn btn-primary" style="width: 100px" wire:click="authorizeAlbum({{$item->id}})">Authorize</button>
                    @endif
                </td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">{{ $albums->links() }}</td>
        </tr>
        </tbody>
    </table>
</div>


<div class="container">

    @if(session()->has('message'))
        <div class="alert alert-success my-2 text-center" role="alert" id="messageBox">
            Album Bought!
        </div>
    @endif

    <div class="d-flex justify-content-between my-3">
        <h2>Album of {{$artist->user->name}}</h2>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Cover</th>
            <th scope="col">price</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($artist->albums as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>
                    <img width="110" src="{{$item->cover}}" alt="cover">
                </td>
                <td>{{$item->price}}</td>
                <td>
                    <a class="btn btn-success position-relative"
                       href="{{route('user.allArtist.albums.songs', ['idArtist' => $artist->id,'idAlbum' => $item->id])}}" wire:navigate>
                        View Songs
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                            {{$item->songs_count}}
                        </span>
                    </a>
                    @if(!$item->userSales->contains('id', auth()->user()->id))
                        <a wire:click="buyAlbumByPaypal({{$item}})" class="btn btn-primary">Buy</a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>



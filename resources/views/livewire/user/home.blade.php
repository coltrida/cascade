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
        <h2>My Last Albums</h2>
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

    @if($searchText)
        <section>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Artist</th>
                    <th scope="col">Price</th>
                </tr>
                </thead>
                <tbody>
                @foreach ($albums as $item)
                    <tr>
                        <th scope="row">{{$item->id}}</th>
                        <td>{{$item->name}}</td>
                        <td>{{$item->artist->user->name}}</td>
                        <td>€ {{$item->price}}</td>
                    </tr>
                @endforeach
                <tr>
                    <td colspan="3">{{ $albums->links() }}</td>
                </tr>
                </tbody>
            </table>
        </section>
    @endif
</div>

<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>Artists ({{$artists->total()}})</h2>
        <div class="d-flex">
            <input type="text" wire:model="searchText" class="form-control border-2" placeholder="search">
            <button class="btn btn-primary" wire:click="search">search</button>
            <button class="btn btn-warning" wire:click="resetSearch">reset</button>
        </div>
    </div>

    <div class="btn-group my-3 d-flex justify-content-center" role="group" aria-label="Basic radio toggle button group">
        @foreach($tags as $tag)
            <div>
                <input type="radio" wire:click="selectTag({{$tag->id}})" class="btn-check" name="btnradio" id="{{$tag->id}}" autocomplete="off">
                <label class="btn btn-outline-primary" for="{{$tag->id}}">{{$tag->name}}</label>
            </div>
        @endforeach
        <div>
            <input type="radio" wire:click="selectTag({{0}})" class="btn-check" name="btnradio" id="reset" autocomplete="off">
            <label class="btn btn-outline-danger" for="reset">Reset</label>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">email</th>
            <th scope="col">Country</th>
            <th scope="col">Style</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($artists as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->user->name}}</td>
                <td>{{$item->user->email}}</td>
                <td>{{$item->user->country}}</td>
                <td>{{$item->tag->name}}</td>
                <td>
                    <a class="btn btn-success position-relative" href="{{route('user.allArtist.albums', $item->id)}}" wire:navigate>
                        View Albums
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                {{$item->albums_count}}
                            </span>
                    </a>
                </td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">{{ $artists->links() }}</td>
        </tr>
        </tbody>
    </table>
</div>

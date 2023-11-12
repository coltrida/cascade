<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>Users ({{$users->total()}})</h2>
        <div class="d-flex">
            <input type="text" wire:model="searchText" wire:keydown.enter="search"
                   class="form-control border-2" placeholder="search">
            <button class="btn btn-primary" wire:click="search">search</button>
            <button class="btn btn-warning" wire:click="resetSearch">reset</button>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">email</th>
            <th scope="col">country</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($users as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->fullname}}</td>
                <td>{{$item->email}}</td>
                <td>{{$item->country}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="4">{{ $users->links() }}</td>
        </tr>
        </tbody>
    </table>
</div>

<div class="container">
    <h2>Albums</h2>
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
                <td>{{$item->price}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">{{ $albums->links() }}</td>
        </tr>
        </tbody>
    </table>
</div>


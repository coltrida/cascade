<div class="container">
    <h2>Artists</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">email</th>
            <th scope="col">Country</th>
            <th scope="col">Style</th>
            <th scope="col">Nr. Albums</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($artists as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>{{$item->email}}</td>
                <td>{{$item->country}}</td>
                <td>{{$item->artist->tag->name}}</td>
                <td>{{$item->artist->albums_count}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">{{ $artists->links() }}</td>
        </tr>
        </tbody>
    </table>
</div>

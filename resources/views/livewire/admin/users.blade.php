<div class="container">
    <h2>Users</h2>
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
                <td>{{$item->name}}</td>
                <td>{{$item->email}}</td>
                <td>{{$item->country}}</td>
            </tr>
        @endforeach
        <tr>
            <td colspan="3">{{ $users->links() }}</td>
        </tr>
        </tbody>
    </table>


</div>

<div class="container">
    <div class="d-flex justify-content-between my-3">
        <h2>Tags</h2>
        <form wire:submit="save" class="d-flex">
            <input type="text" wire:model="name" class="form-control border-2">
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($tags as $item)
            <tr>
                <th scope="row">{{$item->id}}</th>
                <td>{{$item->name}}</td>
                <td>
                    <button wire:click="delete({{$item->id}})" type="button" class="btn btn-danger" style="width: 60px">
                        <i class="bi bi-trash"></i>
                    </button>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>



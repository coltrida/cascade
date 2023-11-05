<div class="container text-center">
    <div class="row">
        <div class="col">
            <div class="p-3">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h5 class="card-title">Nr. of Albums:
                            <span class="badge text-bg-warning">
                                {{$user->artist->albums_count}}
                            </span>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="p-3">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h5 class="card-title">Nr. of Clients:
                            <span class="badge text-bg-warning">
                                {{$user->artist->user_sales_count}}
                            </span>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="row">
        <div class="col">
            <div class="p-3">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h5 class="card-title">Best Album Sales:</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="p-3">
                <div class="card shadow-lg">
                    <div class="card-body">
                        <h5 class="card-title">Total Sales al Albums:
                            <span class="badge text-bg-warning">
                                {{$user->artist->albums->sum('user_sales_count')}}
                            </span>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

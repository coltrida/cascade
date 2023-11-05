<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>{{ $title ?? 'Ca-scade' }}</title>
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> -->
    <link href="{{asset('/css/style.css')}}" rel="stylesheet">
    <link href="{{asset('/css/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('/css/slick.css')}}" rel="stylesheet">
    <link href="{{asset('/css/slick-theme.css')}}" rel="stylesheet">

    {{--  bootstrap icon--}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <!-- GOOGLE FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Kodchasan:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400&family=Kodchasan:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Favicons -->
  <!--   <link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
    <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico"> -->
    <meta name="theme-color" content="#712cf9">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }

        .bd-mode-toggle .dropdown-menu .active .bi {
            display: block !important;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-black">
    <div class="container-fluid">
        <a class="navbar-brand" href="/" wire:navigate>
            <img src="{{asset('/img/ca-scade-logo.png')}}" alt="logo" width="240">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                @auth
                    @if(auth()->user()->isAdmin())
                        <li class="nav-item">
                            <a class="btn btn-warning rounded-5 mx-2" aria-current="page" href="{{route('admin.users')}}" wire:navigate.hover>Users</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-warning rounded-5" href="{{route('admin.artists')}}" wire:navigate.hover>Artists</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-warning rounded-5 mx-2" href="{{route('admin.albums')}}" wire:navigate.hover>Albums</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-warning rounded-5" href="{{route('admin.tags')}}" wire:navigate.hover>Tags</a>
                        </li>
                    @endif
                @endauth
            </ul>

            <ul class="navbar-nav">
                @auth
                    <div class="btn-group dropstart">
                        <button type="button" class="btn btn-warning rounded-5 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                            {{auth()->user()->name}}
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li>
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <button type="submit" class="dropdown-item">
                                        Logout
                                    </button>
                                </form>

                            </li>
                        </ul>
                    </div>
                @else
                    <li class="nav-item">
                        <a class="btn btn-warning rounded-5 mx-2" aria-current="page" href="http://localhost/cascade/public/index.php/login">SIGN UP</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-warning rounded-5" href="http://localhost/cascade/public/index.php/register">LOG IN</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-light rounded-5 mx-2" href="http://localhost/cascade/public/index.php/register">I'M AN ARTIST</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="btn btn-warning rounded-5 mx-2" aria-current="page" href="{{route('login')}}">login</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-warning rounded-5 mx-2" aria-current="page" href="{{route('login')}}">login</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-warning rounded-5 mx-2" href="{{route('register')}}">register as Artist</a>
                    </li> -->
                @endauth
            </ul>
        </div>
    </div>
</nav>
{{ $slot }}

@persist('player')
<audio src="{{ asset('/1.mp3') }}" controls></audio>
@endpersist
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
</script>  -->
<script src="{{asset('/js/bootstrap.bundle.js')}}"></script>
<script
    src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function(){
  $('.new-slider').slick({
    slidesToShow: 6,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 4000,
    prevArrow:"<button type='button' class='slick-prev pull-left'><i class='bi bi-chevron-left'></i></button>",
    nextArrow:"<button type='button' class='slick-next pull-right'><i class='bi bi-chevron-right'></i></button>"
  });
});
</script>

</body>
</html>

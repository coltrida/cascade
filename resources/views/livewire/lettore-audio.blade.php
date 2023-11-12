<div>

        @persist('player')
        <audio src="{{ asset($percorsoCanzoneDaSuonare) }}" autoplay controls></audio>
        <div>TEST</div>
        <a style="color: white; font-size: 28px; cursor: pointer"
           aria-current="page" wire:click="addToFavorites">
            <i class="bi bi-heart-fill"></i>
        </a>
{{--        <span style="color: white">{{$canzoneDaSuonare->name}} - {{$canzoneDaSuonare->album->name}} - {{$canzoneDaSuonare->album->artist->user->name}}</span>--}}
        @endpersist

</div>

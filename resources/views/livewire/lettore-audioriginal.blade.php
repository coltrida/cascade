<div>

        @persist('player')
    @auth
        <div class="simple-audio-player" id="simp" data-config='{"shide_top":false,"shide_btm":false,"auto_load":false}'>

            <div class="simp-playlist">
                <ul>
                    @if($listaSongsDaSuonare->count() > 0)
                    @foreach($listaSongsDaSuonare as $song)
                    <li>
                        <span class="simp-source" data-src="{{$song->path}}" data-cover=""></span>
                        <span class="simp-desc"></span>
                    </li>
                    @endforeach
                    @endif
                    <li><span class="simp-source" data-src="http://localhost/cascade/public/storage/songs/2.mp3" data-cover=""></span><span class="simp-desc"></span></li>
                    <li><span class="simp-source" data-src="http://localhost/cascade/public/storage/songs/3.mp3" data-cover=""></span><span class="simp-desc"></span></li>
                </ul>
            </div>
        </div>

{{--        <audio src="{{ asset($percorsoCanzoneDaSuonare) }}" autoplay controls></audio>--}}

        <a style="color: white; font-size: 28px; cursor: pointer"
           aria-current="page" wire:click="addToFavorites">
            <i class="bi bi-heart-fill"></i>
        </a>
    @endauth
{{--        <span style="color: white">{{$canzoneDaSuonare->name}} - {{$canzoneDaSuonare->album->name}} - {{$canzoneDaSuonare->album->artist->user->name}}</span>--}}
        @endpersist

</div>

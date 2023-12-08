<div>
    @persist('player')
    @auth
{{--        <div class="d-flex justify-content-center" style="{{$visualizzaLettore ? 'display:block' : 'visibility:hidden'}}">--}}
        <div class="d-flex justify-content-center">
            <div class="d-flex text-white justify-content-center">
                <div class="d-flex border rounded-2 p-3" style="box-shadow: white 2px 2px 2px;">

                    <div class="border rounded-2 p-2 fs-3"
                         style="cursor: pointer; {{$inShuffleMode ? 'color:red; background: lightslategray' : ''}}">
                        <i class="bi bi-shuffle"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3"
                         style="cursor: pointer"
                         id="backwardBtn">
                        <i class="bi bi-skip-backward-circle-fill"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3"
                         style="cursor: pointer; {{$canzoneInPlay ? 'color:red; background: lightslategray' : ''}}"
                         id="playBtn">
                        <i class="bi {{$canzoneInPlay ? 'bi-pause' : 'bi-play'}}"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3"
                         style="cursor: pointer"
                         id="forwardBtn">
                        <i class="bi bi-fast-forward-circle-fill"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3" style="cursor: pointer" wire:click="addToFavorites">
                        <i class="bi bi-heart-fill"></i>
                    </div>
                </div>
            </div>

            <div class="d-flex text-white justify-content-center">
                <div class="border rounded-2 p-3" style="box-shadow: white 2px 2px 2px;">
                    <div>
                        <input type="range" class="form-range" id="volumeRange" min="0" max="1" step="any" value="0.5">
                    </div>
                    <div>
                        @if($canzoneAttualmenteInPlay)
                            {{$canzoneAttualmenteInPlay->id}} - {{$canzoneAttualmenteInPlay->name}} <br>
                            {{$canzoneAttualmenteInPlay->album->name}}
                        @endif
                    </div>
                </div>
            </div>
        </div>
    @endauth
    @endpersist
</div>

<script>
    document.addEventListener('livewire:init', () => {
        let playAudio = new Audio();
        let playBtn = document.querySelector('#playBtn');
        let forwardBtn = document.querySelector('#forwardBtn');
        let backwardBtn = document.querySelector('#backwardBtn');
        let volumeRange = document.querySelector('#volumeRange');
        let listaCanzoni = [];

        volumeRange.addEventListener("input", (event) => {
            playAudio.volume = event.target.value;
        });

        Livewire.on('suona', ({ idSong }) => {
            playAudio.src = '/storage/songs/'+idSong+'.mp3'
            playAudio.play();
        })

        Livewire.on('pausa', () => {
            playAudio.pause();
        })

        Livewire.on('riprendi', () => {
            playAudio.play();
        })

        Livewire.on('shuffleON', (listaCanzoniDaSuonare) => {
            if(listaCanzoni.length === 0) {
                listaCanzoni = listaCanzoniDaSuonare.listaCanzoniDaSuonare;
                let randomSong = listaCanzoni[Math.floor(Math.random()*listaCanzoni.length)];
                playAudio.src = '/storage/songs/'+randomSong.id+'.mp3'
                playAudio.play();
                Livewire.dispatch('visualizzaNuovaCanzonaSuonata', { song: randomSong })
            }

            playAudio.addEventListener('ended', function(){
                let randomSong = listaCanzoni[Math.floor(Math.random()*listaCanzoni.length)];
                playAudio.src = '/storage/songs/'+randomSong.id+'.mp3'
                playAudio.play();
                Livewire.dispatch('visualizzaNuovaCanzonaSuonata', { song: randomSong })
            })
        })

        Livewire.on('shuffleOFF', () => {
            console.log('of')
        })

        playBtn.onclick = function(){
            if(!playAudio.paused){
                Livewire.dispatch('pauseBtn')
            } else {
                Livewire.dispatch('playBtn')
            }
        };

        forwardBtn.onclick = function(){

        };

        backwardBtn.onclick = function(){

        };
    })
</script>

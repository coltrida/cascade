<div>
    @persist('player')
    @auth
        <div class="d-flex justify-content-center">
            <div class="d-flex text-white justify-content-center">
                <div class="d-flex border rounded-2 p-3" style="box-shadow: white 2px 2px 2px;">

                    <div class="border rounded-2 p-2 fs-3" style="cursor: pointer">
                        <i class="bi bi-shuffle"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3" style="cursor: pointer">
                        <i class="bi bi-skip-backward-circle-fill"></i>
                    </div>
                    <div class="border rounded-2 p-2 fs-3"
                         style="cursor: pointer; {{$canzoneInPlay ? 'background: lightslategray' : ''}}"
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
                            {{$canzoneAttualmenteInPlay->name}} <br>
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
        let volumeRange = document.querySelector('#volumeRange');

        /*volumeRange.onInput = function(val){
            console.log(val)
            console.log('ok')
            playAudio.volume = val;
        }*/

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

        playBtn.onclick = function(){
            if(!playAudio.paused){
                Livewire.dispatch('pauseBtn')
            } else {
                Livewire.dispatch('playBtn')
            }
        };

        forwardBtn.onclick = function(){
            console.log(playAudio.volume)
        };
    })
</script>

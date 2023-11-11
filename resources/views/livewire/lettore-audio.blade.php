<div>
    @persist('player')
    <audio src="{{ asset($canzoneDaSuonare) }}" autoplay controls></audio>
    <a style="color: white; font-size: 28px; cursor: pointer"
       aria-current="page" wire:click="addToFavorites">
        <i class="bi bi-heart-fill"></i>
    </a>
    @endpersist
</div>

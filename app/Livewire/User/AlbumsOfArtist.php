<?php

namespace App\Livewire\User;

use App\Models\Album;
use App\Models\Artist;
use Illuminate\Http\Request;
use Livewire\Component;
use Srmklive\PayPal\Services\PayPal;

class AlbumsOfArtist extends Component
{

    public $artist;

    public function mount($idArtist)
    {
        $this->artist = Artist::with(['user','albums' => function($a){
            $a->authorized()->withCount('songs')->with('userSales');
        }])->find($idArtist);
    }

    public function buyAlbumByPaypal(Album $album)
    {
        //   dd($request->album);
        $provider = new PayPal();
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();

        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('user.paypal.success'),
                "cancel_url" => route('user.paypal.cancel'),
            ],
            "purchase_units" => [
                [
                    'reference_id' => $album->id,
                    'amount' => [
                        "currency_code" => "EUR",
                        "value" => $album->price
                    ],
                    "payee" => [
                        "email_address" => $album->artist->emailPypal
                    ]
                ]
            ],
        ]);

        if (isset($response['id']) && $response['id']!=null){
            foreach ($response['links'] as $link){
                if ($link['rel'] === 'approve') {
                    $this->redirect($link['href']);
               //     return Inertia::location($link['href']);
                }
            }
        } else {
            return to_route('user.paypal.cancel');
        }
    }

    public function render()
    {
        return view('livewire.user.albums-of-artist');
    }
}

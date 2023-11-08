<?php

namespace App\Http\Controllers;

use App\Mail\AlbumBuy;
use App\Models\Album;
use App\Services\AlbumService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Srmklive\PayPal\Services\PayPal;

class PaypalController extends Controller
{
    public function successPaypal(Request $request, AlbumService $albumService)
    {
        //dd($request);
        $provider = new PayPal();
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request->token);

        //   dd($response);

        if (isset($response['status']) && $response['status'] == 'COMPLETED'){
            $album = Album::find($response['purchase_units'][0]['reference_id'])->toArray();
            $albumService->buyAlbum($album);
            Mail::to('coltrida@gmail.com')->queue(new AlbumBuy($album));
            return to_route('user.allArtist.albums', $album['artist_id']);
        } else {
            return to_route('user.paypal.cancel');
        }
    }

    public function cancelPaypal()
    {
        return "Payment is Cancelled";
    }
}

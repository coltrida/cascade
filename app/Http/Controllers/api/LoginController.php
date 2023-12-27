<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $response = [
            'message' => '',
            'user' => null,
            'login' => false
        ];
        $email = $request->email;
        $user = User::utenti()->where('email', $email)->first();
        if ($user){
            if (Hash::check($request->password, $user->password)){
                $response['login'] = true;
                $response['user'] = $user->only(['name', 'email', 'avatar']);
            } else {
                $response['message'] = 'password not found';
            }
        } else {
            $response['message'] = 'User not found';
        }

        return $response;
    }

    public function register(Request $request)
    {
        $response = [
            'message' => '',
            'user' => null,
            'login' => false
        ];

        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'surname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'lowercase', 'email', 'max:255', 'unique:'.User::class],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'name' => $request->name,
            'surname' => $request->surname,
            'email' => $request->email,
            'role' => 'user',
            'country' => $request->country,
            'city' => $request->city,
            'password' => Hash::make($request->password),
        ]);

        $response['login'] = true;
        $response['user'] = $user->only(['name', 'email', 'avatar']);

        return $response;
    }

}

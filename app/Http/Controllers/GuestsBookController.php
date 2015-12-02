<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Guest;

class GuestsBookController extends Controller
{
    /**
     * Instance controller.
     *
     * @param Guest $guest
     * @return void
     */
    public function __construct(Guest $guest)
    {
        $this->guest = $guest;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $guests = $this->guest->all();

        return view('dashboard', compact('guests'));
    }

    /**
     * Post status by guest id.
     *
     * @param Request $request
     * @param int $id
     * @return json
     */
    public function postStatus(Request $request, $id)
    {
        $guest = $this->guest->find($id);
        
        if ($guest) 
        {
            $guest->hadir = ! $guest->hadir;
            $guest->save();

            return ['error' => false, 'guest' => $guest];
        }

        return ['error' => true];
    }

    public function postGuest(Request $request)
    {
        $guest = $this->guest->create([
            'nama' => $request->input('nama'),
            'institusi' => $request->input('institusi'),
            'hadir' => 0,
        ]);

        if ($guest)
        {
            return ['error' => false, 'guest' => $guest];
        }

        return ['error' => true];
    }
}

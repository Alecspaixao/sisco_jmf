<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;

class UserController extends Controller
{
    //Mostar a view
    public function index()
    {
        return view('index');
    }
}

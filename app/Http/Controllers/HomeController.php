<?php

namespace App\Http\Controllers;

use App\Insurer;
use App\InsurerParent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      //  $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
//        $insurers = Insurer::get()->toArray();

        $insurers = DB::table('insurers')
        ->join('insurer_parents', 'insurers.parent_id', '=', 'insurer_parents.id')
        ->select('insurers.name as name', 'insurer_parents.name as parent')
        ->orderBy('insurers.name', 'asc')
        ->get();

        return view('home.index', ['insurers' => $insurers]);
    }
}

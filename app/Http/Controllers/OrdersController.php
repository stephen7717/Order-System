<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrdersController extends Controller
{
    public function index()
    {
        
        
        $data = Orders::all();//eloquent getting all data inside the database
        //$data = Orders::where('id', '>',15)->orderBy('customer','asc')->get();

       
        return view('orders.index', ['orders' => $data]);
    } 
}

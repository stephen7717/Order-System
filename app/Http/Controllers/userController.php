<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\View;
use Illuminate\Validation\Rule;


class userController extends Controller
{
    public function index(){
        return 'Hello from UserController';
    }

    public function login(){
        if(View::exists('user.login')){
            return view('user.login');
        }else{
            return abort(404);
        }
    }
    public function process(Request $request)
    {
        $validated = $request->validate([
            "email" => ['required', 'email'],
            'password' => 'required'
        ]);

        if(auth()->attempt($validated))
        {
            $request->session()->regenerate();

            return redirect('/')->with('message','Welcome back!');
        }

        return back()->withErrors(['email' => 'Login Failed'])->onlyInput('email');
    }

    public function register(){
        return view('user.register');
    }
    public function logout(Request $request)
    {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/login')->with('message', 'Logout Successful');
    }
    public function store(Request $request){
        $validated = $request->validate([
            "name" => ['required', 'min:6'],
            "email" => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|confirmed|min:6'
        ]);

        $validated['password'] = Hash::make($validated['password']);

        $user = User::create($validated);
        
        auth()->login($user);
        
        
        //return redirect('/')->with('message','Register Successfully!');
    }

    public function show($id){

        $data = ["data" => "data from database"];
        return view('user')
            ->with('data', $data)
            ->with('name', 'Stephen')
            ->with('age', '23')
            ->with('email', 'Stephen@gmail.com')
            ->with('id', $id);
    }
}

<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Mail\ResetPasswordMail;
use App\Models\User;
use App\Models\ResetPassword;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        // Validasi input
        $this->validate($request, [
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        // Temukan user berdasarkan email
        $user = User::where('email', $request->email)->first();

        // Cek apakah user ditemukan dan password cocok
        if (!$user || !Hash::check($request->password, $user->password)) {
            return redirect('/login')->with('error', 'Email atau Password tidak valid !!');
        }

        // Login user
        Auth::login($user, false);

        // Logging aktivitas dan redirect berdasarkan role
        if ($user->hasRole('admin')) {
            activity()->causedBy(Auth::user())->log('User Admin ' . auth()->user()->name . ' melakukan login');
            return redirect('/overview');
        } elseif ($user->hasRole('pimpinan')) {
            activity()->causedBy(Auth::user())->log('User Pimpinan ' . auth()->user()->name . ' melakukan login');
            return redirect('/overview');
        } elseif ($user->hasRole('dosen_staff')) {
            activity()->causedBy(Auth::user())->log('User Dosen/Staff ' . auth()->user()->name . ' melakukan login');
            return redirect('/barang');
        } elseif ($user->hasRole('mahasiswa')) {
            activity()->causedBy(Auth::user())->log('User Mahasiswa ' . auth()->user()->name . ' melakukan login');
            return redirect('/barang');
        } else {
            // Redirect default jika tidak ada role yang cocok
            return redirect('/login')->with('error', 'Role tidak valid !!');
        }


    }

    public function forgot_password(){
        return view('auth.forgotpassword');
    }
    
    public function forgot_password_process(Request $request){
        $customMessage = [
            'email.required' => 'Email tidak boleh kosong',
            'email.email' => 'Email tidak valid',
            'email.exists' => 'Email tidak terdaftar',
        ];

        $request->validate([
            'email'     => 'required|email|exists:users,email',
        ], $customMessage);

        $token = Str::random(60);

        ResetPassword::updateOrCreate(
            [
                'email' => $request->email,
            ],
            [
                'email' => $request->email,
                'token' => $token,
                'created_at' => now(),
            ]
        );

        // Log::info('Sending reset password email to: ' . $request->email);
        // Log::info('Reset password token: ' . $token);

        Mail::to($request->email)->send(new ResetPasswordMail($token));

        return redirect()->route('forgot-password')->with('success', 'Check your email for a password reset link.');
    }

    public function validasi_forgot_password(Request $request, $token)
    {
        $getToken = ResetPassword::where('token', $token)->first();
        if(!$getToken){
            return redirect('/login')->with('failed', 'Token tidak valid');
        }
        return view('auth.validasi-token', compact('token'));
    }

    public function validasi_forgot_password_act(Request $request)
{
    $customMessage = [
        'password.required' => 'Password tidak boleh kosong',
        'password.min' => 'Password minimal 8 karakter',
    ];

    $request->validate([
        'password' => 'required|min:8'
    ], $customMessage);

    // Cari token reset password yang sesuai
    $token = ResetPassword::where('token', $request->token)->first();

    if (!$token) {
        return redirect('/login')->with('failed', 'Token tidak valid');
    }

    // Temukan user berdasarkan email dari token
    $user = User::where('email', $token->email)->first();

    if (!$user) {
        return redirect('/login')->with('failed', 'Email yang dimasukkan tidak terdaftar di SIILTI');
    }

    // Update password user
    $user->update([
        'password' => Hash::make($request->password)
    ]);

    // Hapus token reset password setelah berhasil
    $token->delete();

    return redirect('/login')->with('success', 'Password Anda berhasil diperbarui');
}


    public function register()
    {
        return view('auth.register');
    }

    public function registerproses(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8',
        ]);
        

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        // Menambahkan peran ke pengguna
        $user->assignRole('mahasiswa');

        return redirect('/login')->with('success', 'Pendaftaran berhasil! Silakan login.');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }
}

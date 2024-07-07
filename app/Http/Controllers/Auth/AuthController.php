<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Mail\ResetPasswordMail;
use App\Models\User;
use App\Models\ResetPassword;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;

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

    public function forgot_password()
    {
        return view('auth.forgotpassword');
    }

    public function forgot_password_process(Request $request)
    {
        $customMessage = [
            'email.required' => 'Email tidak boleh kosong',
            'email.email' => 'Email tidak valid',
            'email.exists' => 'Email tidak terdaftar',
        ];

        $request->validate([
            'email' => 'required|email|exists:users,email',
        ], $customMessage);

        // Generate token
        $token = Str::random(60);

        // Update or create password reset record
        ResetPassword::updateOrCreate(
            [
                'email' => $request->email,
            ],
            [
                'token' => $token,
                'created_at' => now(),
            ]
        );

        // Send email with reset link
        try {
            Mail::to($request->email)->send(new ResetPasswordMail($token));
        } catch (\Exception $e) {
            // Handle email sending error
            Log::error('Gagal mengirim email reset password: ' . $e->getMessage());
            return redirect()->route('forgot-password')->with('error', 'Gagal mengirim email reset password. Silakan coba lagi nanti.');
        }
        

        return redirect()->route('forgot-password')->with('success', 'Check your email for a password reset link.');
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

        // Create new user
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        // Assign role to the user
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


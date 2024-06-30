<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <title>Login</title>
    <style>
        /* CSS untuk meletakkan form login di tengah */
        .center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div class="bg-slate-700">
        <div class="container mx-auto center">
            <div class="bg-white p-6 rounded-lg w-96 md:w-1/4">
                <div class="text-center">
                    <img src="/siilti.jpeg" alt="logo" class="w-10 h-10 rounded mx-auto block object-cover">
                    <p class="font-bold text-xl mt-5">Sign Up to Login</p>
                    <p class="text-slate-400 text-xs mt-2">Enter Your Email and Password Below</p>
                </div>
                <div class="mt-10">
                    @if (session()->has('error'))
                    <div class="bg-red-500 p-2">
                        <p class="text-xs text-center text-white">{{session()->get('error')}}</p>
                    </div>
                    @endif
                    <form action="{{route('register-proses')}}" method="post">
                        @csrf
                        <label class="text-sm text-slate-400 font-semibold uppercase mt-5 inline-block" for="name">Nama</label>
                        <div class="border @error('name') border-red-500 @enderror mt-2 p-2">
                            <input id="name" class="w-full h-full text-sm focus:outline-none" type="text" name="name" value="{{old('name')}}" placeholder="Nama Lengkap">
                        </div>
                          @error('name') 
                            <p class="italic mt-1 text-red-500 text-xs">{{$message}}</p> 
                          @enderror
                        <label class="text-sm text-slate-400 font-semibold uppercase mt-5 inline-block" for="email">Email</label>
                        <div class="border @error('email') border-red-500 @enderror mt-2 p-2">
                            <input id="email" class="w-full h-full text-sm focus:outline-none" type="email" name="email" value="{{old('email')}}" placeholder="Email Address">
                        </div>
                          @error('email') 
                            <p class="italic mt-1 text-red-500 text-xs">{{$message}}</p> 
                          @enderror
                        <div class="flex justify-between mt-5">
                            <label class="text-sm text-slate-400 font-semibold uppercase" for="password">Password</label>
                            <a class="text-xs text-slate-400" href="">Forgot password?</a>
                        </div>
                        <div class="border mt-2 p-2 @error('password') border-red-500 @enderror">
                            <input id="password" class="w-full h-full text-sm focus:outline-none" type="password" name="password" placeholder="Password">
                        </div>
                          @error('password') 
                            <p class="italic text-red-500 text-xs">{{$message}}</p> 
                          @enderror
                        <button class="bg-blue-700 text-white text-center w-full mt-5 rounded-lg py-2 text-sm">Log in</button>
                        <p class="text-center text-xs text-slate-400 mt-5">You have an account? 
                          <a href="{{ route('login') }}"><span class="text-teal-500 font-semibold">Sign In</span></a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
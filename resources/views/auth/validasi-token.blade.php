<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <title>Forgot Password</title>
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
                    <p class="font-bold text-xl mt-5">Enter Your New Password</p>
                </div>
                <div class="mt-10">
                    @if (session()->has('error'))
                    <div class="bg-red-500 p-2">
                        <p class="text-xs text-center text-white">{{session()->get('error')}}</p>
                    </div>
                    @endif
                    <form action="{{ route('validasi-forgot-password-act') }}" method="post">
                        @csrf
                        <input type="hidden" name="token" value="{{ $token }}">
                        <label class="text-sm text-slate-400 font-semibold uppercase mt-1 inline-block" for="password">New Password</label>
                        <div class="border @error('password') border-red-500 @enderror mt-2 p-2">
                            <input id="password" class="w-full h-full text-sm focus:outline-none" type="password" name="password" value="{{old('password')}}" placeholder="Enter New Password">
                        </div>
                          @error('password') 
                            <p class="italic mt-1 text-red-500 text-xs">{{$message}}</p> 
                          @enderror
                        </div>
                        <button class="bg-blue-700 text-white text-center w-full mt-5 rounded-lg py-2 text-sm">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

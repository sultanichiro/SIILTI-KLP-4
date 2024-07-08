<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto flex justify-center items-center h-screen">
        <div class="bg-white p-6 rounded-lg shadow-md w-full max-w-sm">
            <h4 class="font-bold text-xl text-center mb-2">Hai kamu, ada permintaan untuk mereset password akun SIILTI?</h4>
            <div class="text-center mb-4">
                <a href="{{ route('validasi-forgot-password', ['token' => $token]) }}" class="text-blue-600 hover:underline">Klik di sini</a>
            </div>
        </div>
    </div>
</body>
</html>

@extends('layouts.main')

@section('container')
<div class="container px-4">
    <div class="bg-white p-5 mt-5 rounded-lg">
        <div class="flex">
            <h2 class="text-gray-600 font-bold">Update Data Mahasiswa</h2>
        </div>

        <form action="/update-labor/{{$labor->id}}" method="POST" class="w-full mt-5">
            @csrf
            @method('PUT')
            <div class="flex gap-1 mt-3">
                <div class="w-full">
                    <label class="text-sm text-gray-600" for="room">Ruangan</label>
                    <div class="border">
                        <select name="room_id" class="select-room text-black w-full" id="select-room">
                            <option value="" disabled selected>Pilih Ruangan</option>
                            @foreach($ruangans as $ruangan)
                                <option class="text-sm" value="{{$ruangan->id}}">{{$ruangan->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="day">Hari</label>
                <div class="border-2 p-1 @error('day') border-red-400 @enderror">
                    <input name="day" value="{{ old('day', $labor->day) }}" class="text-black w-full h-full focus:outline-none text-sm" id="day" type="text">
                </div>
                @error('day')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="date">Tanggal</label>
                <div class="border-2 p-1 @error('date') border-red-400 @enderror">
                    <input name="date" value="{{ old('date', $labor->date) }}" class="text-black w-full h-full focus:outline-none text-sm" id="date" type="date">
                </div>
                @error('date')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="time">Jam</label>
                <div class="border-2 p-1 @error('time') border-red-400 @enderror">
                    <input name="time" value="{{ old('time', \Carbon\Carbon::parse($labor->time)->format('H:i')) }}" class="text-black w-full h-full focus:outline-none text-sm" id="time" type="time">
                </div>
                @error('time')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <label class="text-sm text-gray-600" for="kegiatan">Kegiatan</label>
                <div class="border-2 p-1 @error('kegiatan') border-red-400 @enderror">
                    <textarea name="kegiatan" class="text-black w-full h-20 focus:outline-none text-sm" id="kegiatan">{{ old('kegiatan', $labor->kegiatan) }}</textarea>
                </div>
                @error('kegiatan')
                    <p class="italic text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>
            <div class="mt-3">
                <button class="bg-gray-600 text-white w-full p-2 rounded text-sm">Simpan Perubahan Data</button>
            </div>
        </form>
    </div>
</div>
@endsection

@section('js')
<script>
    const selectRoom = document.getElementById('select-room');
    const choicesRoom = new Choices(selectRoom, {
        searchEnabled: true,
        itemSelectText: '',
        placeholderValue: 'Pilih Ruangan',
        removeItemButton: true,
    });
</script>
@endsection

<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Labor;
use Illuminate\Support\Facades\Log;
use App\Models\Ruangan;

class LaborController extends Controller
{
    public function indexLabor()
    {
        $labors = Labor::paginate(10);
        $ruangans = Ruangan::all(); // Ambil semua data ruangan
        return view('dashboard.labor.index', compact('labors', 'ruangans'));
    }


    public function createLabor()
    {
        $ruangans = Ruangan::all();
        return view('dashboard.labor.input', compact('ruangans'));
    }

    public function storeLabor(Request $request)
    {
        $validatedData = $request->validate([
            'room_id'   => 'required|integer|exists:ruangans,id',
            'day'       => 'required|string|max:255',
            'date'      => 'required|date',
            'time'      => 'required',
            'kegiatan'  => 'required'
        ]);

        $ruangan = Ruangan::findOrFail($request->room_id);

        $labor = Labor::create([
            'room_id'   => $request->room_id,
            'day'       => $request->day,
            'date'      => $request->date,
            'time'      => $request->time,
            'kegiatan'  => $request->kegiatan
        ]);

        return redirect('/labor')->with('message', 'Kegiatan Labor berhasil disimpan.');
    }

    public function editLabor($id)
    {
        $labor = Labor::findOrFail($id);
        $ruangans = Ruangan::all();
        return view('dashboard.labor.update', compact('labor', 'ruangans'));
    }

    public function updateLabor(Request $request, Labor $labor)
    {
        Log::info('Request Data: ', $request->all());

        $validatedData = $request->validate([
            'room_id'   => 'required|integer|exists:ruangans,id',
            'day'       => 'required|string|max:255',
            'date'      => 'required|date',
            'time'      => 'required|date_format:H:i',
            'kegiatan'  => 'required'
        ]);

        Log::info('Validated Data: ', $validatedData);

        $labor->update($validatedData);

        Log::info('Updated Labor: ', $labor->toArray());

        return redirect('/labor')->with('success', 'Kegiatan Labor berhasil diperbarui.');
    }


    public function deleteLabor($id)
    {
        $labor = Labor::findOrFail($id);
        $labor->delete();
        return redirect('/labor')->with('success', 'Data Mahasiswa berhasil dihapus.');
    }
}

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

    public function updateLabor(Request $request, $id)
    {
        $this->validate($request, [
            'room_id'   => 'required|integer|exists:ruangans,id',
            'day'       => 'required|string|max:255',
            'date'      => 'required|date',
            'time'      => 'required|date_format:H:i',
            'kegiatan'  => 'required|string|max:255',
        ]);

        $labor = Labor::findOrFail($id);
        $updated = $labor->update([
            'room_id'   => $request->room_id,
            'day'       => $request->day,
            'date'      => $request->date,
            'time'      => $request->time,
            'kegiatan'  => $request->kegiatan
        ]);
    
        if ($updated) {
            return redirect('/labor')->with('message', 'Kegiatan Labor berhasil diupdate');
        } else {
            return back()->withErrors(['message' => 'Gagal mengupdate kegiatan labor']);
        }
    }
    

    public function deleteLabor($id)
    {
        $labor = Labor::findOrFail($id);
        $labor->delete();
        return redirect('/labor')->with('success', 'Data Mahasiswa berhasil dihapus.');
    }
}

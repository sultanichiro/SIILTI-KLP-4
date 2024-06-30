<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Ruangan;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\RuanganExport;
use Illuminate\Http\Request;


class RuanganController extends Controller
{
    public function indexRuangan (Request $request) {
        if($request->has('search')) {
            $ruangan = Ruangan::where('name', 'LIKE', "%{$request->search}%")->paginate();
        } else {
            $ruangan = Ruangan::paginate(10);
        }
        return view('dashboard.ruangan.index', ['ruangans'=>$ruangan]);
    
    }

    public function createRuangan () {
        return view('dashboard.ruangan.input');
    }

    public function storeRuangan (Request $request) {
        $this->validate($request, [
            'name'=> ['required']
        ]);

       $created = Ruangan::create([
            'name'=>$request->name
       ]);

       if($created){
        return redirect()->route('ruangan')->with('message', 'data berhasil ditambahkan');
       }
    }

    public function deleteRuangan ($id) {
        $ruangan = Ruangan::findOrFail($id);
        $deleted = $ruangan->delete();

        if($deleted) {
           session()->flash('message', 'berhasil hapus data');
           return response()->json(['message'=> 'success delete data'],200);
        }
    }

    public function editRuangan ($id) {
        $ruangan = Ruangan::findOrFail($id);
        return view('dashboard.ruangan.update', ['ruangan'=>$ruangan]);
    }

    public function updateRuangan(Request $request, $id) {
        $this->validate($request, [
            'name'=> ['required']
        ]);

        $ruangan = Ruangan::findOrFail($id);
        $updated = $ruangan->update([
            'name'=>$request->name
        ]);

        if($updated){
            return redirect()->route('ruangan')->with('message', 'data berhasil diubah');
        }
    }

    // public function exportExcel () {
    //     return Excel::download(new RuanganExport, 'Ruangan.xlsx');
    // }
}

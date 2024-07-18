<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\UserExport;
use App\Imports\UserImport;

class UserController extends Controller
{
    public function admin() 
    {
        // Ambil user yang memiliki role 'admin'
        $admins = User::role('admin')->paginate(10);
        return view('dashboard.admin.index', ['admins' => $admins]);
    }

    public function createAdmin() 
    {
        return view('dashboard.admin.input');
    }

    public function storeAdmin(Request $request) 
    {
        $this->validate($request, [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users'],
            'password' => ['required']
        ]);

        $userCreated = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        if ($userCreated) {
            $userCreated->assignRole('admin');
            return redirect('/admin')->with('message', 'data berhasil ditambahkan');
        }
    }

    public function editAdmin($id) 
    {
        $admin = User::findOrFail($id);
        return view('dashboard.admin.update', ['admin' => $admin]);
    }

    public function updateAdmin(Request $request, $id) 
    {
        $this->validate($request, [
            'name' => ['required'],
            'email' => ['required', 'email'],
            'password' => ['nullable']
        ]);

        $admin = User::findOrFail($id);

        if ($request->has('password') && $request->password) {
            $password = Hash::make($request->password);
        } else {
            $password = $admin->password;
        }

        $updated = $admin->update([
            'name' => $request->name,
            'email' => $request->email,
            'password' => $password,
        ]);

        if ($updated) {
            $admin->syncRoles(['admin']);
            return redirect('/admin')->with('message', 'data berhasil diubah');
        }
    }

    public function deleteAdmin($id)
    {
        $admin = User::findOrFail($id);
        $admin->delete();

        return response()->json(['success' => true]);
    }

    public function officer(Request $request) 
    {
        $roles = ['mahasiswa', 'pimpinan', 'dosen_staff'];
        $query = User::whereHas('roles', function ($query) use ($roles) {
            $query->whereIn('name', $roles);
        });

        if ($request->has('search')) {
            $query->where('name', 'LIKE', "%{$request->search}%");
        }

        $officers = $query->paginate(10);
        return view('dashboard.officer.index', ['officers' => $officers]);
    }

    public function createOfficer() 
    {
        $roles = Role::all(); // Mengambil semua role
        return view('dashboard.officer.input', compact('roles'));
    }

    public function storeOfficer(Request $request) 
    {
        $this->validate($request, [
            'name' => ['required'],
            'email' => ['required', 'email', 'unique:users,email'],
            'password' => ['required', 'min:6'],
            // 'role' => ['required', 'exists:roles,name']
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        $user->assignRole($request->role); // Menetapkan role ke pengguna

        if ($user) {
            return redirect('/petugas')->with('message', 'Data berhasil ditambahkan');
        }
    }

    public function editOfficer($id) 
    {
        $officer = User::findOrFail($id);
        $roles = Role::where('name', '<>', 'admin')->get(); 
        return view('dashboard.officer.update', ['officer' => $officer, 'roles'=>$roles]);
    }

    public function updateOfficer(Request $request, $id)
    {
        $this->validate($request, [
            'name' => ['required'],
            'email' => ['required', 'email'],
        ]);
    
        $officer = User::findOrFail($id);
    
        $data = [
            'name' => $request->name,
            'email' => $request->email,
        ];
    
        if ($request->has('password') && $request->password) {
            $data['password'] = Hash::make($request->password);
        }
    
        $updated = $officer->update($data);
    
        if ($updated) {
            // Menyinkronkan role jika diperlukan
            if ($request->has('role')) {
                // Pastikan role yang dipilih valid
                $role = $request->role;
                if (in_array($role, ['pimpinan', 'dosen_staff', 'mahasiswa'])) { // Ganti dengan role yang sesuai
                    $officer->syncRoles([$role]);
                } else {
                    // Handle jika role tidak valid
                    return redirect()->back()->with('error', 'Role tidak valid.');
                }
            }
            return redirect('/petugas')->with('message', 'Data berhasil diubah');
        }
    }

    public function deletePetugas($id)
    {
        $officer = User::findOrFail($id);
        $officer->delete();

        return response()->json(['success' => true]);
    }


    public function exportExcel () 
    {
        return Excel::download(new UserExport, 'user.xlsx');
    }

    public function input_importOfficer () 
    {
        return view('dashboard.officer.import');
    }

    public function importUser(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xlsx,xls', // Validasi untuk jenis file yang diunggah
        ]);

        try {
            Excel::import(new UserImport(), $request->file('file'));

            return redirect('/petugas')->with('success', 'Data pengguna berhasil diimpor.');
        } catch (\Exception $e) {
            return redirect('/petugas')->with('error', 'Terjadi kesalahan saat mengimpor data pengguna: ' . $e->getMessage());
        }
    }

}
  
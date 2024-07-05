<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Activitylog\Models\Activity;

class ActivityUserController extends Controller
{
    public function index(Request $request){
        $search = $request->input('search');

        $query = Activity::query();

        if ($search) {
            $query->where('log_name', 'like', "%{$search}%")
                  ->orWhere('description', 'like', "%{$search}%");
        }

        $activityLogs = $query->paginate(10); // Pastikan menggunakan paginate

        return view('dashboard.activitylog.index', compact('activityLogs'));
    }
}

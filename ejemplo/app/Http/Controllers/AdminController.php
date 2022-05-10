<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function adminDashboard(Request $request)
    {
        echo "Admin Dashboard" . "\n". "<pre>" .$request."</pre>";
    }
}

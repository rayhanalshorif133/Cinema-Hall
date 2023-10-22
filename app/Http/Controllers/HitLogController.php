<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HitLogController extends Controller
{
    public function hitLog(Request $request)
    {
        $this->handleHitLogs($request->height, $request->width);
        return response()->json(['status' => 'success']);
    }
}

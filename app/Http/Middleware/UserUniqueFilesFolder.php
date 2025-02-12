<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage; // Fixed the namespace here
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class UserUniqueFilesFolder
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if (Auth::check()) {
            //unique folder name => my1files
            $folder_name = 'my' . Auth::user()->id . 'files';
            if (!Storage::disk('public')->exists($folder_name)) {
                Storage::disk('public')->makeDirectory($folder_name, 0755, true, true); // Removed the extra "Storage::"
            }
            Config::set('elfinder.dir', ["storage/$folder_name"]);
        }
        return $next($request);
    }
}

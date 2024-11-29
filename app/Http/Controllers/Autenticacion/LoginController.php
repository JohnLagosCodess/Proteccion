<?php

namespace App\Http\Controllers\Autenticacion;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Crypt;

use Illuminate\Support\Facades\Session;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    public function show()
    {
        // Si el usuario no ha iniciado, no podrá ingresar al sistema
        return view('autenticacion.login');
    }

    public function authenticate(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // SI LA VALIDACIÓN SE CUMPLE SE PROCEDE A INICIAR SESIÓN
        if (Auth::attempt($credentials)) {
            Auth::logoutOtherDevices($request->password);
            $user = User::select('*')->where('email', $request->email)->first();
            $token =  Crypt::encryptString($user->email);

            if ($user->cambiar_clave) {
                return view('ingenieria.cambiar_clave', compact('user', 'token'));
            } else {
                return redirect()->route('RolPrincipal');
            }
        }

        // DE LO CONTRARIO NO SE MANDA AL LOGIN
        /* EXTRACCIÓN DEL CORREO Y PASSWORD DEL USUARIO DE LA BD */
        $email_db = DB::table('users')
            ->select('email')
            ->where('email', $request->email)->get();

        $password_db = DB::table('users')
            ->select('password')
            ->where('email', $request->email)->get();

        /* SI EL CORREO NO EXISTE NO DEJARÁ ENTRAR */
        if (count($email_db) == 0) {
            return back()->withErrors([
                'email' => 'el correo ingresado no está registrado.',
            ]);
        }

        /* SI LA CONTRASEÑA NO EXISTE NO DEJARÁ ENTRAR */
        if (! Hash::check($request->password, $password_db[0]->password)) {
            return back()->withErrors([
                'password' => ['Contraseña incorrecta.']
            ]);
        }
    }

    public function cambiar_clave(Request $request)
    {
        $request->validate([
            'clave1' => [
                'required',
                'string',
                'min:8', // Mínimo 8 caracteres
                'regex:/[A-Z]/', // Al menos una letra mayúscula
                'regex:/[a-z]/', // Al menos una letra minúscula
                'regex:/[0-9]/', // Al menos un número
                'regex:/[@$!%*?&]/', // Al menos un carácter especial
            ],
            'email' => 'required|email',
            'token' => 'required'
        ]);

        try {
            $emailDesencriptado = Crypt::decryptString($request->token);

            if ($emailDesencriptado !== $request->email) {
                return redirect()->route('login')->withErrors(['error' => 'Token no válido.']);
            }

            $user = User::where('email', $request->email)->update([
                'cambiar_clave' => 0,
                'password' => bcrypt($request->clave1)
            ]);

           
            return view('autenticacion.login')->with('success', 'Contraseña actualizada de manera correcta, por favor inicie sesion nuevamente.');

        } catch (\Exception $e) {
            return redirect()->route('login')->withErrors(['error' => 'Hubo un problema con el token. Intenta nuevamente.']);
        }

    }
}

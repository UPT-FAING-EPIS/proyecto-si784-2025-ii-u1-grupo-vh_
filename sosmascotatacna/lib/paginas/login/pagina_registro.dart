import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sosmascota/vistamodelos/autenticacion_vistamodelo.dart';

class PaginaRegistro extends StatefulWidget {
  const PaginaRegistro({super.key});

  @override
  State<PaginaRegistro> createState() => _PaginaRegistroEstado();
}

class _PaginaRegistroEstado extends State<PaginaRegistro> {
  final TextEditingController _controladorNombre = TextEditingController();
  final TextEditingController _controladorCorreo = TextEditingController();
  final TextEditingController _controladorClave = TextEditingController();
  String _rolSeleccionado = 'usuario';

  void _registrarUsuario(BuildContext context) async {
    final vistaModelo = Provider.of<AutenticacionVistaModelo>(
      context,
      listen: false,
    );

    await vistaModelo.registrarUsuario(
      _controladorNombre.text.trim(),
      _controladorCorreo.text.trim(),
      _controladorClave.text.trim(),
      _rolSeleccionado,
    );

    if (vistaModelo.mensajeError != null) {
      _mostrarError(context, vistaModelo.mensajeError!);
    } else {
      Navigator.pop(context); // volver al login
    }
  }

  void _mostrarError(BuildContext context, String mensaje) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(mensaje)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF667eea), Color(0xFF764ba2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Logo y título
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.person_add,
                        size: 64,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Crear Cuenta',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3748),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Únete a la comunidad SOSMascota',
                      style: TextStyle(fontSize: 16, color: Color(0xFF64748B)),
                    ),
                    const SizedBox(height: 32),

                    // Campo nombre
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE2E8F0)),
                      ),
                      child: TextField(
                        controller: _controladorNombre,
                        decoration: const InputDecoration(
                          labelText: 'Nombre completo',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF667eea),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: TextStyle(color: Color(0xFF64748B)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Campo correo
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xFFE2E8F0)),
                      ),
                      child: TextField(
                        controller: _controladorCorreo,
                        decoration: const InputDecoration(
                          labelText: 'Correo electrónico',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFF667eea),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: TextStyle(color: Color(0xFF64748B)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Campo clave
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE2E8F0)),
                      ),
                      child: TextField(
                        controller: _controladorClave,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Contraseña',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF667eea),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: TextStyle(color: Color(0xFF64748B)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Dropdown Rol
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAFC),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE2E8F0)),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: _rolSeleccionado,
                        items: const [
                          DropdownMenuItem(
                            value: 'usuario',
                            child: Text('Usuario'),
                          ),
                          DropdownMenuItem(
                            value: 'veterinario',
                            child: Text('Veterinario'),
                          ),
                        ],
                        onChanged: (valor) {
                          setState(() => _rolSeleccionado = valor!);
                        },
                        decoration: const InputDecoration(
                          labelText: 'Rol',
                          prefixIcon: Icon(
                            Icons.assignment_ind_outlined,
                            color: Color(0xFF667eea),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(16),
                          labelStyle: TextStyle(color: Color(0xFF64748B)),
                        ),
                        dropdownColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Botón registrar
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF667eea).withOpacity(0.4),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () => _registrarUsuario(context),
                        icon: const Icon(Icons.check, color: Colors.white),
                        label: const Text(
                          'Registrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Botón volver a login
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFF667eea)),
                      ),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          '¿Ya tienes cuenta? Inicia sesión',
                          style: TextStyle(
                            color: Color(0xFF667eea),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

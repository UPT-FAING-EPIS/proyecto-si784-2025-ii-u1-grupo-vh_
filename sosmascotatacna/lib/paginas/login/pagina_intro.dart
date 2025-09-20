import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:geolocator/geolocator.dart';

class PaginaIntro extends StatefulWidget {
  const PaginaIntro({super.key});

  @override
  State<PaginaIntro> createState() => _PaginaIntroEstado();
}

class _PaginaIntroEstado extends State<PaginaIntro> {
  final PageController _controladorPagina = PageController();

  Future<void> _verificarYActivarGPS() async {
    final permiso = await Permission.location.request();

    if (!mounted) return;

    if (permiso.isGranted) {
      final gpsActivo = await Geolocator.isLocationServiceEnabled();

      if (gpsActivo) {
        _irALogin();
      } else {
        await Geolocator.openLocationSettings();
        await Future.delayed(const Duration(seconds: 2));

        if (await Geolocator.isLocationServiceEnabled()) {
          _irALogin();
        } else {
          _mostrarMensaje('Por favor, activa el GPS para continuar');
        }
      }
    } else {
      _mostrarMensaje('Se necesita permiso de ubicación');
    }
  }

  void _mostrarMensaje(String mensaje) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(mensaje)));
  }

  void _irALogin() {
    Navigator.pushReplacementNamed(context, '/verificar');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FFFE),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controladorPagina,
              children: [
                _buildSlide(
                  titulo: 'Reporta mascotas',
                  descripcion:
                      'Puedes registrar mascotas perdidas o encontradas en tu zona.',
                  icono: Icons.pets,
                ),
                _buildSlide(
                  titulo: 'Encuentra ayuda',
                  descripcion:
                      'Explora mascotas reportadas cerca de ti y comunícate con los dueños.',
                  icono: Icons.search,
                ),
                _buildSlide(
                  titulo: 'Activa el GPS',
                  descripcion:
                      'Activa tu ubicación para mejorar las búsquedas y los reportes.',
                  icono: Icons.location_on,
                  mostrarBoton: true,
                  onBotonPresionado: _verificarYActivarGPS,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: SmoothPageIndicator(
              controller: _controladorPagina,
              count: 3,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Color(0xFF00BCD4),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide({
    required String titulo,
    required String descripcion,
    required IconData icono,
    bool mostrarBoton = false,
    VoidCallback? onBotonPresionado,
  }) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE3F2FD), Color(0xFFF8FFFE)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ícono estilizado
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF667eea), Color(0xFF764ba2)],
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Icon(icono, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 40),
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            descripcion,
            style: const TextStyle(fontSize: 18, color: Color(0xFF718096)),
            textAlign: TextAlign.center,
          ),
          if (mostrarBoton)
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton.icon(
                onPressed: onBotonPresionado,
                icon: const Icon(Icons.gps_fixed),
                label: const Text('Activar GPS y Continuar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00BCD4),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

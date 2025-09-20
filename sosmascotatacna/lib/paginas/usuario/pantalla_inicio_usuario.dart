import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sosmascota/vistamodelos/autenticacion_vistamodelo.dart';
import 'package:sosmascota/vistamodelos/mascota_vistamodelo.dart';
import 'package:sosmascota/vistamodelos/vista_mascotas_vistamodelo.dart';
import 'package:sosmascota/paginas/usuario/pagina_reportar_mascota.dart';
import 'package:sosmascota/paginas/usuario/pagina_mis_reportes.dart';
import 'package:sosmascota/paginas/usuario/pagina_mascotas_reportadas.dart';
import 'package:sosmascota/paginas/usuario/mis_chats_page.dart';
import 'package:sosmascota/paginas/usuario/PaginaPerfilAjustes.dart';

class PantallaInicioUsuario extends StatefulWidget {
  const PantallaInicioUsuario({super.key});

  @override
  State<PantallaInicioUsuario> createState() => _PantallaInicioUsuarioEstado();
}

class _PantallaInicioUsuarioEstado extends State<PantallaInicioUsuario>
    with WidgetsBindingObserver {
  Timer? _temporizador;
  int _paginaActual = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _temporizador?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final vistaModelo = Provider.of<AutenticacionVistaModelo>(
      context,
      listen: false,
    );

    if (state == AppLifecycleState.paused) {
      _temporizador = Timer(const Duration(seconds: 10), () async {
        await vistaModelo.cerrarSesion();
        if (mounted) {
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        }
      });
    } else if (state == AppLifecycleState.resumed) {
      _temporizador?.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    final usuario = Provider.of<AutenticacionVistaModelo>(context).usuario;

    final opciones = [
      {
        'icono': Icons.pets,
        'texto': 'Reportar',
        'accion':
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => ChangeNotifierProvider(
                      create: (_) => MascotaVistaModelo(),
                      child: const PaginaReportarMascota(),
                    ),
              ),
            ),
      },
      {
        'icono': Icons.map,
        'texto': 'Mascotas cerca',
        'accion':
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => ChangeNotifierProvider(
                      create: (_) => VistaMascotasVistaModelo(),
                      child: const PaginaMascotasReportadas(),
                    ),
              ),
            ),
      },
      {
        'icono': Icons.history,
        'texto': 'Mis reportes',
        'accion':
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PaginaMisReportes()),
            ),
      },
      {
        'icono': Icons.chat,
        'texto': 'Chats',
        'accion':
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MisChatsPage()),
            ),
      },
      {
        'icono': Icons.account_circle,
        'texto': 'Perfil',
        'accion':
            () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PaginaPerfilAjustes()),
            ),
      },
    ];

    final paginas = [
      _buildHome(usuario, opciones),
      const Center(child: Text("Buscar", style: TextStyle(fontSize: 22))),
      const Center(
        child: Text("Notificaciones", style: TextStyle(fontSize: 22)),
      ),
      const Center(child: Text("Perfil", style: TextStyle(fontSize: 22))),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF667eea), Color(0xFF764ba2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          "Hola, ${usuario?.nombre ?? "Usuario"} 👋",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () async {
              final vistaModelo = Provider.of<AutenticacionVistaModelo>(
                context,
                listen: false,
              );
              await vistaModelo.cerrarSesion();
              if (mounted) {
                Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
              }
            },
          ),
        ],
      ),
      body: paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaActual,
        selectedItemColor: const Color(0xFF667eea),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PaginaPerfilAjustes()),
            );
          } else {
            setState(() {
              _paginaActual = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifs",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }

  Widget _buildHome(dynamic usuario, List<Map<String, dynamic>> opciones) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF8FFFE), Color(0xFFF0F9FF)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Saludo
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF667eea).withOpacity(0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.waving_hand, color: Colors.white, size: 30),
                  const SizedBox(width: 12),
                  Text(
                    '¡Bienvenido, ${usuario?.nombre ?? "Usuario"}!',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Opciones
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: opciones.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                final item = opciones[index];
                return GestureDetector(
                  onTap: () => item['accion'](),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF667eea).withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item['icono'] as IconData,
                          size: 36,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          item['texto'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

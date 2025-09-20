import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'package:sosmascota/modelos/mascota_modelo.dart';

class ServicioMascota {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// ✅ Comprime una imagen y devuelve un XFile
  Future<XFile> _comprimirImagen(XFile file) async {
    final dirTemp = await getTemporaryDirectory();
    final rutaDestino = path.join(
      dirTemp.path,
      "${DateTime.now().millisecondsSinceEpoch}_${path.basename(file.path)}",
    );

    final comprimida = await FlutterImageCompress.compressAndGetFile(
      file.path,
      rutaDestino,
      quality: 70, // Calidad entre 0 - 100
      minWidth: 800, // Redimensiona
      minHeight: 800,
    );

    // 🔹 Siempre retornar como XFile para mantener consistencia
    return XFile(comprimida?.path ?? file.path);
  }

  /// ✅ Registrar mascota en Firestore
  Future<void> registrarMascota(MascotaModelo mascota) async {
    final uid = _auth.currentUser?.uid;
    if (uid == null) {
      throw Exception('Usuario no autenticado');
    }

    final datos = mascota.toMap();
    await _firestore.collection('mascotas').add(datos);
  }

  /// ✅ Subir varias imágenes comprimidas
  Future<List<String>> subirImagenes(List<XFile> imagenes) async {
    final urls = <String>[];

    for (var img in imagenes) {
      // 🔹 Comprimir antes de subir
      final comprimida = await _comprimirImagen(img);

      final ref = _storage
          .ref()
          .child('mascotas')
          .child('${DateTime.now().millisecondsSinceEpoch}_${comprimida.name}');

      await ref.putFile(File(comprimida.path));
      final url = await ref.getDownloadURL();
      urls.add(url);
    }

    return urls;
  }

  /// ✅ Subir una sola imagen comprimida
  Future<String> subirImagen(XFile imagen) async {
    final comprimida = await _comprimirImagen(imagen);

    final ref = _storage
        .ref()
        .child('mascotas')
        .child('${DateTime.now().millisecondsSinceEpoch}_${comprimida.name}');

    await ref.putFile(File(comprimida.path));
    return await ref.getDownloadURL();
  }

  /// ✅ Obtener todas las mascotas desde Firestore
  Future<List<MascotaModelo>> obtenerTodas() async {
    final snapshot = await _firestore.collection('mascotas').get();
    return snapshot.docs
        .map((doc) => MascotaModelo.fromMap(doc.data()))
        .toList();
  }
}

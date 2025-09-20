class UsuarioModelo {
  final String uid;
  final String nombre;
  final String correo;
  final String rol;

  UsuarioModelo({
    required this.uid,
    required this.nombre,
    required this.correo,
    required this.rol,
  });

  Map<String, dynamic> toMap() {
    return {'nombre': nombre, 'correo': correo, 'rol': rol};
  }

  factory UsuarioModelo.fromMap(String uid, Map<String, dynamic> map) {
    return UsuarioModelo(
      uid: uid,
      nombre: map['nombre'],
      correo: map['correo'],
      rol: map['rol'],
    );
  }
}

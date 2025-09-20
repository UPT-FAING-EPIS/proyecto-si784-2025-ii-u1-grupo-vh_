# 🐾 SOSMascota - Aplicación Móvil

## 📌 Descripción
**SOSMascota** es una aplicación móvil desarrollada en **Flutter** que permite a los usuarios reportar mascotas perdidas, dar en adopción, solicitar ayuda y comunicarse entre ellos para facilitar el reencuentro con sus dueños.  
La aplicación integra **Firebase** para autenticación, almacenamiento en la nube y base de datos en tiempo real.

---

## ✨ Funcionalidades Principales

### 🔐 Autenticación
- Registro de usuarios con correo y contraseña.
- Login con correo y contraseña.
- Autenticación con Google.
- Diferenciación de roles:  
  - **Usuario normal** 🧑‍💻  
  - **Veterinario** 🩺  
  - **Administrador** 🛠️

### 🐶 Gestión de Mascotas
- Registrar reporte de mascota (nombre, tipo, descripción, ubicación, imágenes).
- Subida de imágenes a Firebase Storage con compresión.
- Detección de ubicación mediante **Google Maps**.
- Validación de imágenes con **OpenAI** (verificación de que sea una mascota).

### 📍 Visualización
- Ver listado de mascotas reportadas.
- Filtrar por estado: *perdida*, *en adopción*, *necesita ayuda*.
- Ver mascotas cercanas en el mapa con geolocalización en tiempo real.

### 💬 Comunicación
- Chat interno entre usuarios.
- Historial de conversaciones disponible en el panel del usuario.

### 👤 Paneles Diferenciados
- **Usuario:**  
  - Ver reportes propios.  
  - Acceso a chats.  
  - Editar perfil y ajustes.  

- **Veterinario:**  
  - Validar información de reportes.  
  - Brindar apoyo en verificaciones.  

- **Administrador:**  
  - Supervisión de usuarios.  
  - Gestión de reportes globales.  

---

## 📱 Pantallas principales
- **Login / Registro** (con colores degradados y UI moderna).
- **Inicio Usuario** con navegación inferior:
  - Inicio (opciones rápidas).
  - Buscar.
  - Notificaciones.
  - Perfil.
- **Reportar Mascota** con integración de cámara y galería.
- **Mapa de Mascotas** con markers en Google Maps.
- **Chats** (individuales por reporte).
- **Perfil y Ajustes**.

---

## 🛠️ Tecnologías Utilizadas
- **Frontend:** Flutter (Dart)
- **Backend / BaaS:** Firebase
  - Authentication
  - Firestore Database
  - Firebase Storage
- **APIs Externas:**
  - Google Maps API
  - OpenAI API (verificación de imágenes)
- **Gestión de estado:** Provider

---

## 📊 Requerimientos Funcionales (RF)
1. Autenticación de usuario (correo/contraseña).
2. Registro de usuario con datos personales.
3. Registro de veterinarios.
4. Registro de reportes de mascotas (con imagen, ubicación, descripción).
5. Visualización de reportes activos.
6. Chat entre usuarios.
7. Panel de usuario con historial y perfil.
8. Panel veterinario con reportes relevantes.

---

## ⚙️ Requerimientos No Funcionales (RNF)
1. **Rendimiento:** Respuesta en < 3 segundos en operaciones críticas.
2. **Disponibilidad:** 24/7 excepto mantenimientos programados.
3. **Usabilidad:** Interfaz intuitiva y amigable para todo tipo de usuario.

---

## 📈 Arquitectura
- Arquitectura **MVVM (Model - View - ViewModel)** para separación de capas.
- Integración modular de servicios (autenticación, mascotas, chat, OpenAI).

---

## 💵 Costos de Firebase (estimados en soles)
- **Plan gratuito:** suficiente en fase inicial.  
- **Plan Blaze (uso real):**
  - Firestore: ~ S/. 40 mensuales según volumen.
  - Storage: ~ S/. 30 mensuales (imágenes).
  - Authentication: ~ S/. 10 mensuales.  
  **Total estimado:** ~ S/. 80 - 100 mensuales.

---


## 👨‍💻 Integrantes
- Christian Dennis Hinojosa Mucho (2019065161)
- Royser Alonsso Villanueva Mamani (2021071090)
- Gilmer Donaldo Mamani Condori (2012042779)

---

## 📌 Estado del Proyecto
✅ En desarrollo activo  
✅ Integrado con Firebase  
⬜ Pendiente de optimización de costos en producción  
⬜ Mejoras con IA (matching avanzado de imágenes)

✅ Impulsar el uso de herramientas tecnológicas para mejorar la participación ciudadana en causas sociales.



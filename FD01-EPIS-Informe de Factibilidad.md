![assets\logo-upt.png][image1]

**UNIVERSIDAD PRIVADA DE TACNA**

**FACULTAD DE INGENIERÍA**

**Escuela Profesional de Ingeniería de Sistemas**

 **Desarrollo de Aplicativo Móvil “SOS Mascota”**

Curso: Calidad y Pruebas de Software

Docente: Mag. Patrick Cuadros Quiroga

Integrantes:

- Christian Dennis Hinojosa Mucho		(2019065161)  
- Royser Alonsso Villanueva Mamani		(2021071090)  
- Gilmer Donaldo Mamani Condori		(2012042779)

 

**Tacna – Perú**  
**2025**

 **Desarrollo de Aplicativo Móvil “SOS Mascota”**

**Documento Informe de Factibilidad**

											

**Versión *1.0***

| CONTROL DE VERSIONES |  |  |  |  |  |
| :---: | ----- | ----- | ----- | :---: | ----- |
| Versión | Hecha por | Revisada por | Aprobada por | Fecha | Motivo |
| 1.0 |  |  |  | 19/09/2025 | Versión Original |

**ÍNDICE GENERAL**

[1\. Descripción del Proyecto	4](#descripción-del-proyecto)

[2\. Riesgos	6](#riesgos)

[3\. Análisis de la Situación actual	7](#análisis-de-la-situación-actual)

[4\. Estudio de Factibilidad	11](#estudio-de-factibilidad)

[4.1 Factibilidad Técnica	11](#factibilidad-técnica)

[4.2 Factibilidad Económica	12](#factibilidad-económica)

[4.3 Factibilidad Operativa	15](#factibilidad-operativa)

[4.4 Factibilidad Legal	15](#factibilidad-legal)

[4.5 Factibilidad Social	16](#factibilidad-social)

[4.6 Factibilidad Ambiental	16](#factibilidad-ambiental)

[5\. Análisis Financiero	17](#análisis-financiero)

[6\. Conclusiones	20](#conclusiones)

**Informe de Factibilidad**

1. Descripción del Proyecto

   1. **Nombre del proyecto**

SOS Mascota 

2. **Duración del proyecto**

   El tiempo estimado del proyecto será de 1 mes, iniciando el 1 de mayo de 2025, culminando el 27 de mayo de 2025\.

   3. **Descripción**

   El propósito de este proyecto es desarrollar una aplicación móvil llamada **“SOS Mascota”**, que permita a los usuarios reportar mascotas perdidas, en adopción o que necesitan ayuda, así como visualizar reportes cercanos y comunicarse entre usuarios y veterinarios para facilitar su atención y recuperación.

   4. **Objetivos**

   **1.4.1 Objetivo general**

   Evaluar la viabilidad de la aplicación móvil “Mascota SOS”, considerando aspectos técnicos, operativos, económicos y legales, con el fin de determinar su implementación efectiva para mejorar la gestión de reportes de mascotas perdidas, en adopción o que necesitan ayuda.

   **1.4.2 Objetivos Específicos**

* Analizar las herramientas y tecnologías necesarias para el desarrollo de la aplicación móvil.

* Identificar los recursos humanos y operativos requeridos para su implementación.

* Evaluar la experiencia de usuario y la funcionalidad del sistema en diferentes perfiles (usuario y veterinario).

* Determinar la sostenibilidad económica y legal del proyecto en su entorno de uso.


2. Riesgos

Los riesgos de este proyecto se verán marcados por los siguientes puntos:

* En primer lugar, la conectividad y el acceso a Internet pueden representar una limitación importante, ya que la aplicación depende del uso de servicios como mapas, carga de imágenes y chats en tiempo real. En zonas con poca cobertura, esto puede afectar el funcionamiento adecuado del sistema.  
* En segundo lugar, la veracidad de la información proporcionada por los usuarios. Al ser una aplicación abierta al público, existe el riesgo de que se publiquen reportes falsos, datos inexactos o contenidos no apropiados, lo cual podría comprometer la efectividad y confiabilidad de la plataforma.

3. Análisis de la Situación actual

   1. **Planteamiento del problema**

Existe una falta de herramientas tecnológicas que faciliten la búsqueda, reporte y atención de mascotas perdidas, en adopción o que necesiten ayuda, lo que dificulta la respuesta oportuna por parte de los dueños, la comunidad y los profesionales veterinarios. Esta carencia limita la capacidad de generar una red de apoyo eficiente y organizada para el cuidado animal en entornos urbanos.

2. **Consideraciones de hardware y software**

Hardware:

* Computadora de escritorio o una laptop con las siguientes capacidades:  
* Procesador: Intel Core i7/i9 o AMD Ryzen 7/9  
* Memoria RAM: Mínimo 8GB (recomendado 16GB para grandes volúmenes de datos)  
* Almacenamiento: SSD de al menos 512GB para rapidez en procesamiento.  
* Plataforma de mapas (Google Maps API)  
* Servicio de base de datos en tiempo real (Firebase Realtime Database o Firestore)  
* Servicio de autenticación (Firebase Authentication o similar)  
* Servicio de almacenamiento en la nube para imágenes (Firebase Storage)

Software:

* **Visual Studio Code 1.98 o versión más actual:** Editor de código multiplataforma para desarrollo con Flutter.  
* **Flutter SDK 3.x o versión más actual:** Framework para la creación de aplicaciones móviles multiplataforma.  
* **Dart SDK:** Lenguaje de programación requerido por Flutter.  
* **Firebase SDK:** Para la autenticación de usuarios, almacenamiento de imágenes, base de datos en tiempo real y mensajería.  
* **Android SDK y emulador Android:** Para pruebas y despliegue en dispositivos móviles.  
* **Google Maps API:** Para la visualización de ubicaciones y direcciones dentro de la app.

4. Estudio de Factibilidad

   1. **Factibilidad Técnica**

El estudio de viabilidad técnica tiene como objetivo evaluar la tecnología actual disponible y su aplicabilidad para el desarrollo e implementación del aplicativo móvil “Mascota SOS”. A continuación, se detalla la evaluación de los recursos tecnológicos que se utilizarán:

Hardware:

**Computadora de escritorio o laptop** con las siguientes características mínimas:

* **Procesador:** Intel Core i5/i7 o AMD Ryzen 5/7  
* **Memoria RAM:** Mínimo 8 GB (recomendado 16 GB para fluidez en el desarrollo y emulación)  
* **Almacenamiento:** SSD de al menos 512 GB para un rendimiento óptimo  
* **Dispositivo móvil Android/iOS** para pruebas físicas del aplicativo  
* **Acceso a un servidor en la nube**, como Firebase (de Google), para autenticación, almacenamiento y base de datos en tiempo real

**Software:**

* **Visual Studio Code (VS Code) 1.98 o versión actual**  
* **Flutter SDK 3.x o versión actual**: Para el desarrollo de interfaces móviles multiplataforma  
* **Dart SDK**: Lenguaje de programación compatible con Flutter  
* **Firebase SDK**: Para implementar funciones de autenticación, base de datos, almacenamiento de imágenes.  
* **Google Maps API**: Para la localización de mascotas  
* **Emulador de Android Studio**: Para pruebas en entorno simulado

  2. **Factibilidad Económica**

Se definieron los siguientes costos:

1. **Costos Generales**

| Accesorios y Materiales | Costo por 1 mes |
| :---: | :---: |
| Papelería | S/. 15.00  |
| Lapiceros | S/. 10.00 |
| Cartuchos de Impresora | S/. 60.00 |
| Computadora de Oficina | S/. 1500.00 |
| Total | S/. 1585.00 |

   

   

   

   

   

   

   

   

   

   2. **Costos operativos durante el desarrollo**

| Servicios | Costos mensuales |
| :---: | :---: |
| Internet | S/. 100.0 |
| Electricidad | S/. 70.0 |
| Agua | S/. 30.0 |
| Total | S/. 200.0 |

   

      3. **Costos del ambiente**

| Descripción | Costo Mensual | Durante 3 meses |
| :---: | :---: | :---: |
| Firebase Storage(uso adicional) | S/. 20.0 | S/. 20.00 |
| Total | S/. 20.00 | S/.20.00 |

      4. **Costos de personal**

| Rol del Personal | Mensualmente |
| :---: | :---: |
| Jefe del Proyecto | S/. 1000.0 |
| Desarrollador Flutter | S/. 800.0 |
| Tester | S/.  800.0 |
| Total | S/. 2600.0 |

      5. **Costos totales del desarrollo del sistema**

| Tipos de costos | Costos Mensuales |
| :---: | :---: |
| General | S/. 1,585.0 |
| Operativos | S/. 200.0 |
| Ambientales | S/. 20.0 |
| Personal | S/. 2600.0 |
| Total | S/. 4405.00 |

   3. **Factibilidad Operativa**

Beneficios del Sistema: El desarrollo del aplicativo móvil **“SOS Mascota”** brinda múltiples beneficios para la sociedad, los usuarios y los profesionales veterinarios:

* **Atención inmediata de emergencias animales:** Permite reportar mascotas perdidas, en adopción o que necesitan ayuda, lo cual facilita la rápida reacción de la comunidad o de un veterinario registrado en la aplicación.

* **Interacción entre usuarios y veterinarios:** A través de un sistema de chat interno, se puede generar comunicación entre quien reporta una mascota y quien desea ayudar, sin necesidad de compartir datos personales.

* **Geolocalización integrada:** Los reportes incluyen ubicación precisa en mapa, lo cual ayuda a encontrar mascotas con mayor rapidez o identificar zonas comunes de abandono.

* **Gestión de reportes personales:** Los usuarios pueden ver, actualizar o finalizar sus reportes según el estado de la mascota (encontrada, adoptada, atendida).

* **Roles diferenciados:** El sistema identifica si el usuario es una persona común o un veterinario, brindando acceso a funciones específicas. Los veterinarios pueden visualizar únicamente los reportes de mascotas que necesitan ayuda, evitando saturación de información irrelevante.

* **Privacidad y seguridad:** Toda la comunicación se realiza dentro de la app, sin necesidad de compartir teléfonos o correos electrónicos.

* **Accesibilidad y facilidad de uso:** Su interfaz intuitiva permite a cualquier persona registrar información de manera sencilla y rápida.

  4. **Factibilidad Legal**

Aspectos Legales Considerados:

El aplicativo “Mascota SOS” cumplirá con la Ley N.º 29733 de Protección de Datos Personales, solicitando el consentimiento informado de los usuarios para el uso de sus datos. Toda la información (como ubicación, fotos y datos de contacto) será gestionada de forma segura dentro de la app. Se aplicarán medidas de ciberseguridad y el sistema evitará el intercambio innecesario de datos personales, garantizando un uso ético y legal de la información.

5. **Factibilidad Social**

Factores Sociales Relevantes:

El aplicativo “SOS Mascota” tendrá un impacto social positivo, promoviendo la protección y el rescate de animales mediante la colaboración ciudadana. Fomentará la conciencia sobre el bienestar animal, facilitará la adopción responsable y fortalecerá los lazos entre personas, rescatistas y veterinarios. Además, generará una comunidad solidaria comprometida con la ayuda a mascotas en situación de riesgo.

6. **Factibilidad Ambiental**

Evaluación Ambiental:

El aplicativo móvil “SOS Mascota” tendrá un impacto ambiental positivo al promover el uso de herramientas digitales para reportar y ubicar mascotas, reduciendo la necesidad de imprimir volantes o carteles físicos. Además, al permitir la comunicación y coordinación remota entre usuarios y veterinarios, se disminuyen desplazamientos innecesarios, contribuyendo a la reducción de emisiones contaminantes y fomentando prácticas tecnológicas sostenibles.

5. Análisis Financiero

   1. Justificación de la Inversión

La inversión en el desarrollo del aplicativo móvil “SOS Mascota” está justificada por los beneficios que traerá a la comunidad, incluyendo la rápida localización y ayuda a mascotas perdidas o en situación de riesgo. Además, fortalecerá la comunicación entre usuarios y veterinarios, mejorando la atención y bienestar animal. Esto contribuirá al bienestar social, promoverá la responsabilidad y cuidado de las mascotas, y posicionará la aplicación como una herramienta útil y confiable para el cuidado animal en la comunidad.

1. **Beneficios del Proyecto**

**Beneficios tangibles:**

* **Reducción del tiempo de respuesta ante mascotas perdidas:**  
   La aplicación permitirá a los usuarios reportar inmediatamente una mascota extraviada, compartiendo su foto, características y ubicación. Esta acción en tiempo real facilitará una búsqueda más rápida, aumentando significativamente las probabilidades de reencuentro.

* **Disminución de costos de difusión y búsqueda:**  
   Al utilizar medios digitales para notificar a la comunidad sobre mascotas perdidas o encontradas, se eliminan los gastos relacionados con la impresión de volantes o carteles. Además, la información llega a un mayor número de personas de forma más eficiente.

* **Centralización de datos para análisis y rastreo:**  
   El sistema almacenará registros históricos de reportes de mascotas, permitiendo identificar zonas frecuentes de extravío, patrones de reincidencia y perfiles de mascotas. Esta base de datos será de utilidad para instituciones, asociaciones y campañas de prevención.

* **Optimización del proceso de atención en refugios y veterinarias:**  
   SOS Mascota podrá ser utilizada como una herramienta complementaria en refugios o centros veterinarios para consultar reportes y verificar si una mascota encontrada ha sido reportada previamente, reduciendo el tiempo de respuesta y gestión manual.


**Beneficios intangibles:**

* **Tranquilidad emocional para los dueños de mascotas:**  
   Al contar con una herramienta eficaz e inmediata, los usuarios experimentan menor estrés y ansiedad ante la pérdida de sus mascotas.

  * **Fomento de la responsabilidad y conciencia ciudadana:**  
     La app promueve la participación activa de la comunidad en la búsqueda y cuidado de los animales, generando un entorno más solidario.

  * **Impulso a la innovación con impacto social:**  
     SOS Mascota se posiciona como una solución tecnológica aplicada al bienestar animal, mostrando que la programación puede tener un propósito social real.

  * **Mejora de la imagen de instituciones que lo apoyen:**  
     Si el proyecto es respaldado por universidades, municipalidades u ONGs, mejora su reputación al involucrarse en causas con valor humano.

  * **Desarrollo de competencias profesionales en los integrantes del proyecto:**  
     Los estudiantes desarrolladores fortalecen habilidades técnicas (Flutter, Firebase), de gestión de proyectos, trabajo colaborativo y pensamiento crítico, lo que impactará positivamente en su futuro laboral.

  




    2. **Criterios de Inversión**

| DETALLE | INGRESOS | EGRESOS | FLUJO DE CAJA |
| :---: | ----- | ----- | :---: |
| INVERSIÓN INICIAL |  |  | \-S/.4,405.00 |
| TRIMESTRE 1 | S/.1,200.00 | S/.20.00 | S/.1,180.00 |
| TRIMESTRE 2 | S/.1,500.00 | S/.20.00 | S/.1,480.00 |
| TRIMESTRE 3 | S/.1,500.00 | S/.20.00 | S/.1,480.00 |
| TRIMESTRE 4 | S/.1,500.00 | S/.20.00 | S/.1,480.00 |
| TASA DE DESCUENTO | 8% |  | S/.1,215.00 |

| VAN | S/.219.17 |
| :---: | ----: |
| TIR | 10% |
| B/C | 1.05 |

		

                    *5.1.2.1 Valor Actual Neto (VAN)*

El Valor Actual Neto (VAN) del proyecto SOS Mascota es de S/. 219.17, considerando una tasa de descuento del 8% trimestral. Este valor positivo indica que el proyecto genera ingresos suficientes no solo para recuperar la inversión inicial de S/. 4,405.00, sino también para obtener una ganancia neta. Por lo tanto, el proyecto es financieramente viable y representa una oportunidad rentable desde el punto de vista económico.

*5.1.2.2 Tasa Interna de Retorno (TIR)*

La Tasa Interna de Retorno (TIR) obtenida es de 10%, lo que significa que el proyecto genera una rentabilidad superior a la tasa mínima exigida del 8% utilizada como referencia. Al estar por encima del costo de oportunidad del capital, se concluye que el proyecto es rentable y atractivo para la inversión, generando beneficios sostenidos en el tiempo.

*5.1.2.3 Beneficio/costo (B/C)*

La relación Beneficio/Costo (B/C) es de 1.05, lo que indica que por cada sol invertido se recuperan S/. 1.05 en valor presente. Este resultado mayor a 1 demuestra que los beneficios superan a los costos, respaldando la viabilidad económica del proyecto. Esta relación es un indicador claro de que el desarrollo e implementación de SOS Mascota genera un retorno favorable y eficiente de los recursos invertidos.

6. Conclusiones

   **Factibilidad Económica:**  
    El análisis financiero realizado demuestra que el proyecto SOS Mascota es económicamente viable. Con una inversión inicial de S/. 4,405.00 y flujos de caja positivos, el proyecto genera un Valor Actual Neto (VAN) de S/. 219.17, una Tasa Interna de Retorno (TIR) del 10.14% y una relación Beneficio/Costo (B/C) de 1.05. Estos indicadores reflejan que el proyecto recupera su inversión en un periodo razonable y genera un excedente, confirmando su rentabilidad y sostenibilidad económica.

   **Factibilidad Operativa:**  
    El sistema SOS Mascota ha sido diseñado con un enfoque en la eficiencia y facilidad de uso. Incorpora funcionalidades como geolocalización, reporte de mascotas, roles diferenciados (usuarios, veterinarios, administradores) y una interfaz intuitiva. Estas características aseguran un funcionamiento operativo óptimo y una alta accesibilidad para los usuarios, permitiendo su implementación sin complicaciones técnicas mayores.

   **Factibilidad Legal:**  
    El proyecto cumple con los lineamientos establecidos en la Ley N.º 29733, Ley de Protección de Datos Personales, garantizando el uso ético y seguro de la información de los usuarios. Se contempla la recolección de datos bajo consentimiento informado, así como la implementación de medidas de ciberseguridad adecuadas para proteger la confidencialidad y la integridad de los datos almacenados.

   **Factibilidad Social:**  
   SOS Mascota promueve un impacto social positivo al fomentar la participación ciudadana, la protección animal y la adopción responsable. Además, fortalece los lazos comunitarios mediante una red colaborativa que permite reportar y encontrar mascotas de manera eficiente. Esto contribuye directamente al bienestar emocional de las personas y al cuidado de los animales en la sociedad.

   **Factibilidad Ambiental:**  
   El uso de tecnologías digitales en lugar de métodos tradicionales de difusión (como volantes impresos) reduce el consumo de papel y otros recursos físicos. Asimismo, minimiza los desplazamientos innecesarios, promoviendo un comportamiento más sostenible. En conjunto, el proyecto contribuye a la preservación del medio ambiente mediante el uso de soluciones tecnológicas responsables.

[image1]: <data:image/png;base64,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>

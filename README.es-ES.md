

# flutter_mvvm_clean_architecture

<h1 align="center" style="font-size: 52px;" ><img height=30 src="https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/flutter/flutter.png"> Plantilla de Arquitectura Limpia MVVM para Flutter </h1>

Una plantilla que ahorra tiempo para demostrar la Arquitectura Limpia MVVM con una estructura básica de proyecto, utilizando APIs REST, GraphQL y Riverpod, para comenzar directamente en lugar de crear todas las carpetas/archivos con cada nuevo proyecto.

### 🧗🏼‍♂️ Hitos
- [x] Patrón de diseño MVVM usando [Riverpod](https://riverpod.dev/).
- [ ] Múltiples sabores de la aplicación (LOCAL-STATGING-PRODUCTION) para pruebas [enlaces](https://petalite-browser-25b.notion.site/Multiple-App-Flavors-42cb9610784844ff880385afa6dde4e9).
- [x] Componentes comunes como botones, entradas de texto, etc.
- [x] Capa de enrutamiento y navegación.
- [x] Uso de programación funcional para un manejo adecuado de errores [artículo](https://resocoder.com/2019/12/14/functional-error-handling-in-flutter-dart-2-either-task-fp/).
- [ ] Capa de persistencia de datos a través de [Hive DB](https://petalite-browser-25b.notion.site/Local-Data-Persistence-ea7ee06d9ca141bd80d54e142a0f5875).
- [ ] Atajos de widgets y efectos shimmer [enlaces](https://petalite-browser-25b.notion.site/Extensions-ab305b18c8a64d91942566de0353f5c5).
- [ ] CI/CD a través de GitHub Actions o Codemagic.
- [ ] [Notificaciones](https://petalite-browser-25b.notion.site/Notifications-1df2c4ce93c54d23a96490ce926fc2b6).
- [ ] Framework responsivo.
- [x] Extensiones listas para usar.
- [x] Shared Preferences.
- [ ] Localizaciones.
- [x] Pantalla de carga nativa [flutter_native_splash](https://pub.dev/packages/flutter_native_splash).
- [ ] Informes de errores/crashes [firebase_crashlytics](https://pub.dev/packages/firebase_crashlytics) O [sentry_flutter](https://pub.dev/packages/sentry_flutter).
- [ ] Toasts accesibles globalmente.
- [ ] Verificación de conectividad. //#internet_connection_checker 
- [x] Cliente de API REST
- [ ] Cliente GraphQL
- [ ] [interceptores de solicitudes](https://medium.com/flutter-community/dio-interceptors-in-flutter-17be4214f363).
- [ ] [Actualización dentro de la aplicación](https://petalite-browser-25b.notion.site/In-App-update-b05cfd08611046d7a0f6c7f4a97c32e8)
- [x] Directorio de pruebas estructurado por cada característica.
- [ ] Pruebas unitarias para la capa de dominio.
- [ ] Pruebas de widgets para la capa de interfaz de usuario.


### 📦 Paquetes
- `shared_preferences: ^2.0.7`
- `cupertino_icons: ^1.0.2`
- `awesome_extensions: ^1.0.7`
- `auto_size_text: ^3.0.0`
- `google_fonts: ^2.1.0`
- `cached_network_image: ^3.2.0`
- `hive: ^2.0.5`
- `dio: ^4.0.4`
- `graphql: ^5.0.0`
- `shared_preferences: ^2.0.11`
- `hooks_riverpod: ^1.0.3`
- `date_format: ^2.0.4`
- `url_launcher: ^6.0.17`
- `equatable: ^2.0.3`
- `mime: ^1.0.1`
- `logger: ^1.1.0`

### 🔻 Cómo comenzar

Abre la CMD/Terminal y ejecuta los siguientes comandos:
```cmd
git clone https://github.com/amrahmed242/flutter-clean-architecture-template.git

cd flutter_app

flutter packages get

flutter run
```

### 🔑 Licencia
- Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo [LICENSE](LICENSE.md) para más detalles

### 🧑 Autor

#### Amr Ahmed
[Enlace de LinkedIn](https://www.linkedin.com/in/amrahmed24/)
También puedes seguir mi perfil de GitHub para mantenerte actualizado sobre mis últimos proyectos:
[Seguir en GitHub](https://github.com/amrahmed242)
¡Si te gustó el repositorio, apóyalo dándole una estrella ⭐!

Derechos de autor (c) 2021 AmrAhmed.

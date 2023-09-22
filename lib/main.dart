// Creado por: Mauricio Ramírez López
// Asignatura: Desarrollo Móvil Integral
// Grado y Grupo: 10°A
// Docente: Ramírez Hernández Marco Antonio
import 'package:dmi_tarea05_200070/src/my_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      // Configura el color de fondo de la aplicación
      scaffoldBackgroundColor: Color.fromARGB(
          255, 218, 149, 240), // Cambia a tu color de fondo preferido
      colorScheme:
          ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 158, 30, 233)),
      useMaterial3: true,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          // Cambio 'headline6' por 'titleLarge'
          fontFamily: 'oswald', // Nombre de la fuente personalizada
          fontSize: 24, // Tamaño de fuente deseado
          color: Colors.black, // Color de fuente deseado
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 158, 30, 233), // Color del botón
          onPrimary: Colors.white, // Color del texto dentro del botón
          padding: EdgeInsets.all(16.0), // Relleno dentro del botón
        ),
      ),
      appBarTheme: AppBarTheme(
        color: Color.fromARGB(
            255, 158, 30, 233), // Color de la barra de aplicación
      ),
    ),
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

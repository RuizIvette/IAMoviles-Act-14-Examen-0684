import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() {
  runApp(JugueteriaApp());
}

class JugueteriaApp extends StatelessWidget {
  const JugueteriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juguetería Ivette Ruiz',
      theme: ThemeData(
        // 'serif' es el equivalente elegante a Times New Roman en Flutter
        fontFamily: 'serif', 
      ),
      // Navegación por rutas nombradas exclusivamente en main
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
      },
    );
  }
}
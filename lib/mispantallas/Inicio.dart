import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Juguetería Ivette Ruiz 6I"),
        actions: [
          IconButton(
            icon: Icon(themeProvider.themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => themeProvider.toggleTheme(),
            tooltip: 'Toggle Theme',
          ),
          IconButton(
            icon: const Icon(Icons.auto_mode),
            onPressed: () => themeProvider.setSystemTheme(),
            tooltip: 'Set System Theme',
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ivette Ruiz 6I",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://raw.githubusercontent.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/refs/heads/main/iniciooo.jpg',
              height: 250,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text("Sign Up"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text("i have an account"),
            ),
          ],
        ),
      ),
    );
  }
}

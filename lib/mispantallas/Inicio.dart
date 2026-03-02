import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Juguetería Ivette Ruiz 6I",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.notifications_none, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.person_outline, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Ivette Ruiz 6I",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://raw.githubusercontent.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/refs/heads/main/iniciooo.jpg',
              height: 250,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text(
                "i have an account",
                style: TextStyle(
                  color: Colors.black, 
                  decoration: TextDecoration.underline,
                  fontSize: 16
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
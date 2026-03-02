import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text("Ivette Ruiz 6I", style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.black,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 18),
                  SizedBox(width: 5),
                  Text("Regresar al catálogo",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Image.network(
                        'https://raw.githubusercontent.com/RuizIvette/imagenes-para-flutter-6-I-fecha-11feb-26/refs/heads/main/categoria.jfif',
                        height: 250,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text("Juguetes que ofrecemos",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 15),
                  const Text(
                    "En nuestra juguetería contamos con una amplia variedad de productos educativos, de entretenimiento y de colección. Desde piezas de construcción hasta figuras de acción.",
                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                      ),
                      onPressed: () {},
                      child: const Text("Explorar esta categoría", 
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black, width: 2),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Elegir otra categoría", 
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
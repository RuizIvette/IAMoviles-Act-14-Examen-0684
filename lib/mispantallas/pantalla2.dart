import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.remove, color: Colors.white, size: 40),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 15),
                const Text(
                  "Hola de Nuevo, Ivette",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "search something",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Selecione una categoría",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 20),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 2.8,
                    children: [
                      _botonCategoria(context, "Muñecas"),
                      _botonCategoria(context, "Carros"),
                      _botonCategoria(context, "Bloques"),
                      _botonCategoria(context, "Peluches"),
                      _botonCategoria(context, "Juegos Mesa"),
                      _botonCategoria(context, "Otros"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text("Reseñas",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(Icons.star_border, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.more_vert, size: 20),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Text("sin reseñas",
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        const SizedBox(height: 20),
                        const Center(child: Icon(Icons.keyboard_arrow_down)),
                      ],
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

  Widget _botonCategoria(BuildContext context, String titulo) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
      child: Text(titulo, style: const TextStyle(color: Colors.white)),
    );
  }
}
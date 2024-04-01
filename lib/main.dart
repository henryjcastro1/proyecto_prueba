import 'package:flutter/material.dart';
import 'iniciosesion.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/FM.jpg'), // Ruta de la imagen en assets
            fit:
                BoxFit.cover, // Ajusta la imagen para cubrir todo el contenedor
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100.0), // Ajusta la distancia desde la parte superior
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(
                'Ingresar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                fixedSize: Size(200, 50), // Tamaño fijo del botón
              ),
            ),
          ),
        ),
      ),
    );
  }
}

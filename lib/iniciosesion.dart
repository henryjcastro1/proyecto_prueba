import 'package:flutter/material.dart';
import 'menu.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo en la parte superior
              Image.asset(
                'assets/fondofmapp2.png',
                height: 100, // Ajusta la altura del logo según sea necesario
              ),
              SizedBox(height: 20), // Espacio entre el logo y el campo de usuario
              // Campo de usuario
              TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  suffixIcon: Icon(Icons.person), // Icono de usuario
                ),
              ),
              SizedBox(height: 20), // Espacio entre los campos
              // Campo de contraseña
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  suffixIcon: Icon(Icons.lock), // Icono de contraseña
                ),
              ),
              SizedBox(height: 20), // Espacio entre los campos
              // Botón de ingresar
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                child: Text(
                  'Ingresar',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                ),
              ),
              SizedBox(height: 20), // Espacio entre el botón y el texto
              // Texto "Registrar Vendedor Aquí" con "Aquí" en rojo
              RichText(
                text: TextSpan(
                  text: 'Registrar vendedor ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Aquí',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

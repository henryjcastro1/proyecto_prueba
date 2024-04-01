import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(); // Repetir la animación indefinidamente
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Animation Example'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              width: 50, // Ancho del contenedor
              height: 50, // Alto del contenedor
              color: Colors.blue, // Color de fondo del contenedor
              alignment: Alignment.center, // Alineación del contenido
              child: CircularProgressIndicator(
                // Indicador de carga circular
                value: _animationController.value, // Valor de la animación
                backgroundColor: Colors.white, // Color de fondo del indicador
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.red), // Color del indicador
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController
        .dispose(); // Liberar recursos del controlador de animación
    super.dispose();
  }
}

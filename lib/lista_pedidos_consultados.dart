import 'package:flutter/material.dart';

class ListaPedidosConsultadosScreen extends StatelessWidget {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95); // Color para los iconos y AppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor, // Utiliza el color definido para el AppBar
        title: Text(
          'Lista de Pedidos Consultados',
          style: TextStyle(color: Colors.white), // Texto blanco en la AppBar
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar pedidos...',
                  prefixIcon: Icon(Icons.search, color: iconColor), // Icono con el color definido
                  border: OutlineInputBorder(borderSide: BorderSide(color: iconColor)), // Borde con el color definido
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10, // Número de pedidos
                separatorBuilder: (context, index) => Divider(color: iconColor), // Separador entre pedidos
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('ID: 20000${index + 1}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cliente: Nombre cliente'),
                        Text('RIF: XXXXXXXXXXXXXXX'),
                        Text('Fecha: 31/03/2024'),
                        Text('Total: \$500.00'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check_circle, color: iconColor), // Icono de enviado con el color definido
                        SizedBox(width: 8), // Espacio entre el icono y el siguiente
                        Icon(Icons.send, color: iconColor), // Icono de enviado a la derecha
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


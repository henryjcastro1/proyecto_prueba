import 'package:flutter/material.dart';

class SeleccionarClienteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seleccionar cliente',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar cliente',
                prefixIcon: Icon(Icons.search, color: const Color.fromARGB(255, 3, 54, 95)), // Color del ícono de búsqueda
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde cuando está habilitado
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: const Color.fromARGB(255, 3, 54, 95)), // Color del borde cuando está enfocado
                ),
              ),
              style: TextStyle(color: Colors.black), // Color del texto
              onChanged: (value) {
                // Acción al cambiar el texto del campo de búsqueda
              },
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10, // Cambiar al número deseado de clientes
              separatorBuilder: (context, index) => Divider(color: const Color.fromARGB(255, 3, 54, 95)), // Línea divisoria entre los clientes
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Acción al seleccionar un cliente de la lista
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Cliente ${index + 1} seleccionado'),
                      duration: Duration(seconds: 1),
                    ));
                  },
                  child: ListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text('Cliente ${index + 1}'), // Nombre del cliente
                        ),
                        Icon(Icons.person, color: const Color.fromARGB(255, 3, 54, 95)), // Icono de usuario a la derecha
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Código: 12345'), // Código del cliente
                        Text('Nombre: Nombre del cliente'), // Nombre del cliente
                        Text('RIF: 123456789'), // RIF del cliente
                        Text('Teléfono: 1234567890'), // Teléfono del cliente
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


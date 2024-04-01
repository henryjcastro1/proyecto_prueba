import 'package:flutter/material.dart';
import 'seleccion_cliente.dart';
import 'productos.dart';


class ClienteYPagoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color iconColor = const Color.fromARGB(255, 3, 54, 95); // Color del icono

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
        title: Text(
          'Cliente y Pago',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductosScreen()),);
            },
            icon: Icon(Icons.check, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              // Acción para el botón de notificación
            },
            icon: Icon(Icons.menu, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              // Acción para el botón de configuración
            },
            icon: Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20), // Espacio entre la parte superior de la pantalla y "Ultima hora de actualización"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), // Ajuste de margen horizontal
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.access_time, color: const Color.fromARGB(255, 3, 54, 95)), // Icono para la hora de actualización
                  SizedBox(width: 5), // Espacio entre el icono y el texto
                  Text(
                    'Ultima actualización:',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espacio entre "Ultima hora de actualización" y el botón
            Text(
              'Seleccione el cliente', // Texto arriba del botón
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10), // Espacio entre el texto y el botón
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SeleccionarClienteScreen()),);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add_alt, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    'Cliente',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                fixedSize: Size(200, 50),
              ),
            ),
            SizedBox(height: 10), // Espacio entre el botón y el separador
            const Divider( // Separador debajo del botón
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 10), // Espacio entre el separador y el texto "Cliente seleccionado"
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row( // Row para el icono y el texto "Cliente seleccionado"
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, color: iconColor), // Icono al lado del texto con el color del icono del botón
                    SizedBox(width: 5), // Espacio entre el icono y el texto
                    Text(
                      'Cliente seleccionado',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Espacio entre "Cliente seleccionado" y los textos adicionales
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                      child: Text(
                        'Cliente:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                      child: Text(
                        'RIF:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                      child: Text(
                        'Teléfono:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Espacio entre el texto y el separador
                    const Divider( // Separador debajo de "Teléfono"
                      color: const Color.fromARGB(255, 3, 54, 95),
                      thickness: 1,
                      height: 10,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: 10), // Espacio entre el separador y el texto "Saldo del cliente"
                    Row( // Row para el icono y el texto "Saldo del cliente"
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.monetization_on, color: iconColor), // Icono al lado del texto con el color del icono del botón
                        SizedBox(width: 5), // Espacio entre el icono y el texto
                        Text(
                          'Saldo del cliente',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Espacio entre "Saldo del cliente" y los textos adicionales
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                          child: Text(
                            'Clientes con facturas pendientes:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                          child: Text(
                            'Límite credito:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                          child: Text(
                            'Saldo del cliente:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        const Divider( // Separador debajo de "Teléfono"
                          color: const Color.fromARGB(255, 3, 54, 95),
                          thickness: 1,
                          height: 10,
                          indent: 20,
                          endIndent: 20,
                        ),// Espacio adicional debajo de los elementos
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10), // Espacio adicional debajo de los elementos

            // Nueva columna igual al "Saldo del cliente"
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10), // Espacio entre el separador y el texto "Saldo del cliente"
                Row( // Row para el icono y el texto "Saldo del cliente"
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.warehouse_sharp, color: iconColor), // Icono al lado del texto con el color del icono del botón
                    SizedBox(width: 5), // Espacio entre el icono y el texto
                    Text(
                      'Facturar y Almacen',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Espacio entre "Saldo del cliente" y los textos adicionales
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                      child: Text(
                        'Moneda:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                      child: Text(
                        'Almacén:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    const Divider( // Separador debajo de "Teléfono"
                      color: const Color.fromARGB(255, 3, 54, 95),
                      thickness: 1,
                      height: 10,
                      indent: 20,
                      endIndent: 20,
                    ),// Espacio adicional debajo de los elementos
                  ],
                ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 10), // Espacio entre el separador y el texto "Saldo del cliente"
            Row( // Row para el icono y el texto "Saldo del cliente"
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.credit_card, color: iconColor), // Icono al lado del texto con el color del icono del botón
                SizedBox(width: 5), // Espacio entre el icono y el texto
                Text(
                  'Seleccione la condición de pago',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Espacio entre "Saldo del cliente" y los textos adicionales
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20), // Añadir espacio a la izquierda
                  child: Text(
                    'Condición de pago:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),


                SizedBox(height: 10),
                const Divider( // Separador debajo de "Teléfono"
                  color: const Color.fromARGB(255, 3, 54, 95),
                  thickness: 1,
                  height: 10,
                  indent: 20,
                  endIndent: 20,
                ),],
    ),],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


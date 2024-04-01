import 'package:flutter/material.dart';
import 'package:p_portafolio/clienteypago.dart';
import 'notificaciones.dart';
import 'configuracion.dart';
import 'filtro_pedidos.dart';
import 'filtro_clientes_nuevos.dart';
import 'catalogo_productos.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
        title: Text(
          'Menú Principal',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Acción para el botón de sincronización
            },
            icon: Icon(Icons.sync, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificacionesScreen()),);// Acción cuando se presiona el botón de menú
            },
            icon: Icon(Icons.notifications, color: Colors.white),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              // Aquí puedes manejar las acciones correspondientes a cada opción
              if (value == 'sync_images') {
                // Acción para sincronizar imágenes
              } else if (value == 'settings') {
                // Navegar a la pantalla de configuración
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfiguracionDarkScreen()),
                );
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'sync_images',
                child: ListTile(
                  leading: Icon(Icons.sync),
                  title: Text('Sincronizar imágenes'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configuración'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'exit',
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Salir'),
                ),
              ),
            ],
            icon: Icon(Icons.settings, color: Colors.white),
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
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person,
                              color: const Color.fromARGB(255, 3, 54, 95)),
                          SizedBox(width: 5),
                          Text(
                            'Usuario: Henry Castro', // Nombre de usuario
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time,
                              color: const Color.fromARGB(
                                  255, 3, 54, 95)), // Icono de timer
                          SizedBox(width: 5),
                          Text(
                            'Última actualización: 10:00 AM', // Hora de actualización
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Aquí van tus botones
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClienteYPagoScreen()),
                        ); // Navegar a la nueva pantalla
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add_shopping_cart,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Generar Pedido', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FiltroPedidosScreen()),
                        ); // Navemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Consultar Pedidos', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FiltroClientesNuevosScreen()),
                        ); // Navegar a la nueva pantalla
                      },
                      child: Row(
                        children: [
                          Icon(Icons.person_add, color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Clientes Nuevos', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => CatalogoProductosScreen()),);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.warehouse_sharp,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Productos', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción que deseas realizar cuando se presione el botón
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.price_change,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'CxC', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción que deseas realizar cuando se presione el botón
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Plan de Visita', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción que deseas realizar cuando se presione el botón
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.stacked_line_chart_sharp,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Indicadores', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción que deseas realizar cuando se presione el botón
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.app_registration,
                              color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Registrar Visita', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                    SizedBox(height: 10), // Separación entre los botones
                    ElevatedButton(
                      onPressed: () {
                        // Acción que deseas realizar cuando se presione el botón
                        // Ejemplo: Navegar a la primera ventana
                      },
                      child: Row(
                        children: [
                          Icon(Icons.camera_alt, color: Colors.white), // Icono
                          SizedBox(
                              width: 10), // Espacio entre el icono y el texto
                          Expanded(
                            child: Text(
                              'Reseña', // Texto del botón
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
                        fixedSize: Size(200, 50), // Tamaño fijo del botón
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

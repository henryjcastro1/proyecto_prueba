import 'package:flutter/material.dart';

class NotificacionesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificaciones',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            _buildNotificacion(
              titulo: 'Alerta',
              tipo: 'Alerta',
              descripcion: 'Esta es una notificación de alerta enviada por el administrador.',
              color: Colors.red,
            ),
            _buildNotificacion(
              titulo: 'Normal',
              tipo: 'Normal',
              descripcion: 'Esta es una notificación normal enviada por el administrador.',
              color: Colors.blue,
            ),
            _buildNotificacion(
              titulo: 'Advertencia',
              tipo: 'Advertencia',
              descripcion: 'Esta es una notificación de advertencia enviada por el administrador.',
              color: Colors.orange,
            ),
            _buildNotificacion(
              titulo: 'Información',
              tipo: 'Información',
              descripcion: 'Esta es una notificación de información enviada por el administrador.',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificacion({
    required String titulo,
    required String tipo,
    required String descripcion,
    required Color color,
  }) {
    return ListTile(
      title: Text(titulo),
      subtitle: Text(descripcion),
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          tipo.substring(0, 1),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

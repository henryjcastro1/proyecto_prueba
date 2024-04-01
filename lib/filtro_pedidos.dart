import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'lista_pedidos_consultados.dart';

class FiltroPedidosScreen extends StatefulWidget {
  @override
  _FiltroPedidosScreenState createState() => _FiltroPedidosScreenState();
}

class _FiltroPedidosScreenState extends State<FiltroPedidosScreen> {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95);
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
        title: Text(
          'Filtro Pedidos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20), // Añade sangría horizontal
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Alinea los elementos al centro
          children: [
            SizedBox(height: 20), // Añade espacio encima del texto
            Text(
              'Filtro Dinámico',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20), // Añade espacio entre los textos
            Text(
              'Pedidos',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider( // Separador debajo del botón
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20), // Añade sangría a la izquierda
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Seleccione parámetros:',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ),

            GestureDetector( // Widget seleccionable para abrir el calendario
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100),
                );

                if (pickedDate != null) {
                  setState(() {
                    _selectedStartDate = pickedDate;
                  });
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seleccione fecha Desde',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.calendar_today, color: iconColor), // Icono del calendario con color personalizado
                  ],
                ),
              ),
            ),

            if (_selectedStartDate != null) // Muestra la fecha seleccionada si está disponible
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Desde: ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '${_selectedStartDate!.day}/${_selectedStartDate!.month}/${_selectedStartDate!.year}',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 8), // Añade espacio entre los textos y el icono "X"
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedStartDate = null; // Borra la fecha seleccionada
                        });
                      },
                      child: Icon(Icons.clear, color: Colors.red), // Icono "X" para borrar la fecha con color rojo
                    ),
                  ],
                ),
              ),
            const Divider( // Separador debajo del botón
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            GestureDetector( // Widget seleccionable para abrir el calendario
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100),
                );

                if (pickedDate != null) {
                  setState(() {
                    _selectedEndDate = pickedDate;
                  });
                }
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seleccione fecha Hasta',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.calendar_today, color: iconColor), // Icono del calendario con color personalizado
                  ],
                ),
              ),
            ),

            if (_selectedEndDate != null) // Muestra la fecha seleccionada si está disponible
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Hasta: ',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      '${_selectedEndDate!.day}/${_selectedEndDate!.month}/${_selectedEndDate!.year}',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 8), // Añade espacio entre los textos y el icono "X"
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedEndDate = null; // Borra la fecha seleccionada
                        });
                      },
                      child: Icon(Icons.clear, color: Colors.red), // Icono "X" para borrar la fecha con color rojo
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListaPedidosConsultadosScreen()),);// Acción cuando se presiona el botón de menú
          // Por ahora solo imprime un mensaje
          print('Realizando búsqueda...');
        },
        child: Icon(Icons.search, color: Colors.white,),
        backgroundColor: iconColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

import 'package:flutter/material.dart';
import 'consulta_presupuestos.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';

class FiltroClientesNuevosScreen extends StatefulWidget {
  @override
  _FiltroClientesNuevosScreenState createState() =>
      _FiltroClientesNuevosScreenState();
}

class _FiltroClientesNuevosScreenState
    extends State<FiltroClientesNuevosScreen> {
  late Color iconColor; // Cambiado a late para inicialización diferida
  DateTime? _selectedStartDate;
  DateTime? _selectedEndDate;

  @override
  void initState() {
    super.initState();
    iconColor =
    const Color.fromARGB(255, 3, 54, 95); // Movido aquí para ser inicializado en initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
        title: Text(
          'Filtro Clientes Nuevos', // Cambiado el título
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
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Filtro Dinámico',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Clientes Nuevos', // Cambiado el texto
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
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
            GestureDetector(
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
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seleccione fecha Desde',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.calendar_today, color: iconColor),
                  ],
                ),
              ),
            ),
            if (_selectedStartDate != null)
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedStartDate = null;
                        });
                      },
                      child: Icon(Icons.clear, color: Colors.red),
                    ),
                  ],
                ),
              ),
            const Divider(
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            GestureDetector(
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
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seleccione fecha Hasta',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.calendar_today, color: iconColor),
                  ],
                ),
              ),
            ),
            if (_selectedEndDate != null)
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedEndDate = null;
                        });
                      },
                      child: Icon(Icons.clear, color: Colors.red),
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
              MaterialPageRoute(
              builder: (context) => ConsultaPresupuestosScreen()),);
        },
        child: Icon(Icons.search, color: Colors.white),
        backgroundColor: iconColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}




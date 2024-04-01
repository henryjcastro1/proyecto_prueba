import 'package:flutter/material.dart';
import 'lista_de_productos_catalogo.dart';

class CatalogoProductosScreen extends StatefulWidget {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95);

  @override
  _CatalogoProductosScreenState createState() =>
      _CatalogoProductosScreenState();
}

class _CatalogoProductosScreenState extends State<CatalogoProductosScreen> {
  String _selectedOption1 = 'Todos'; // Opción seleccionada por defecto para el primer DropdownButton
  String _selectedOption2 = 'Todos'; // Opción seleccionada por defecto para el segundo DropdownButton
  String _selectedOption3 = 'Todos';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.iconColor,
        title: Text(
          'Filtro Productos',
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
              'Productos',
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
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajusta el valor de acuerdo a tus necesidades
              child: Align(
                alignment: Alignment.centerLeft,
                child: DropdownButton<String>(
                  value: _selectedOption1,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption1 = newValue!;
                    });
                  },
                  items: <String>['Todos', 'Con Disponibilidad', 'Sin Disponibilidad']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 10), // Añade espacio entre los DropdownButtons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajusta el valor de acuerdo a tus necesidades
              child: Align(
                alignment: Alignment.centerLeft,
                child: DropdownButton<String>(
                  value: _selectedOption2,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption2 = newValue!;
                    });
                  },
                  items: <String>['Todos', 'Con descuento', 'Sin descuento']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 10), // Añade espacio entre los DropdownButtons
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Ajusta el valor de acuerdo a tus necesidades
              child: Align(
                alignment: Alignment.centerLeft,
                child: DropdownButton<String>(
                  value: _selectedOption3,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedOption3 = newValue!;
                    });
                  },
                  items: <String>['Todos', 'Almacén 1', 'Almacén 2']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
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
                  builder: (context) => ListaProductosCatalogo()),
            );// Navegar a una nueva pantalla
          },
          child: Icon(Icons.search, color: Colors.white),
          backgroundColor: Colors.indigo,
        ),

    );
  }
}


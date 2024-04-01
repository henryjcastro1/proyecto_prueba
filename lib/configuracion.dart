import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfiguracionDarkScreen extends StatelessWidget {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: iconColor,
        title: Text(
          'Configuración',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Acción para el primer botón en la AppBar
            },
            icon: Icon(Icons.save, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              // Acción para el segundo botón en la AppBar
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              // Acción para el tercer botón en la AppBar
            },
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Dirección Remota',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10.0),
                Switch(
                  value: true, // Cambiar al valor deseado
                  onChanged: (bool newValue) {
                    // Acción para el selector de dirección remota
                  },
                  activeColor: iconColor, // Aplicando el color iconColor al Switch
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'Sincronización Automática',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10.0),
                Switch(
                  value: true, // Cambiar al valor deseado
                  onChanged: (bool newValue) {
                    // Acción para el selector de dirección remota
                  },
                  activeColor: iconColor, // Aplicando el color iconColor al Switch
                ),
              ],
            ),
            const Divider( // Separador arriba del código
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 10), // Espacio entre "Cliente seleccionado" y los textos adicionales
            Row( // Row para el icono y el texto "Parametros"
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.article_rounded, color: iconColor), // Icono al lado del texto con el color del icono del botón
                SizedBox(width: 5), // Espacio entre el icono y el texto
                Text(
                  'Parametros',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'GPS',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10.0),
                Switch(
                  value: true, // Cambiar al valor deseado
                  onChanged: (bool newValue) {
                    // Acción para el selector de dirección remota
                  },
                  activeColor: iconColor, // Aplicando el color iconColor al Switch
                ),
              ],
            ), const Divider( // Separador arriba del código
              color: const Color.fromARGB(255, 3, 54, 95),
              thickness: 1,
              height: 10,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: 10), // Espacio entre "Cliente seleccionado" y los textos adicionales
            Row( // Row para el icono y el texto "Cliente seleccionado"
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.monetization_on, color: iconColor), // Icono al lado del texto con el color del icono del botón
                SizedBox(width: 5), // Espacio entre el icono y el texto
                Text(
                  'Datos Financieros',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Tasa',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ingrese la tasa',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: iconColor), // Color de la línea cuando no está seleccionado
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: iconColor), // Color de la línea cuando está seleccionado
                      ),
                    ),
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}')),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Espacio entre "Cliente seleccionado" y los textos adicionales
            Row( // Row para el icono y el texto "Cliente seleccionado"
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.online_prediction, color: iconColor), // Icono al lado del texto con el color del icono del botón
                SizedBox(width: 5), // Espacio entre el icono y el texto
                Text(
                  'Datos de Conexion',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Protocolo:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'http',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: iconColor), // Color de la línea cuando no está seleccionado
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: iconColor), // Color de la línea cuando está seleccionado
                      ),
                    ),
                    inputFormatters: [
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

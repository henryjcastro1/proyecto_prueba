import 'package:flutter/material.dart';
import 'pedido_generado.dart';
import 'menu.dart';

class VistaPreviaPedidoScreen extends StatelessWidget {
  final Color iconColor = const Color.fromARGB(255, 3, 54, 95); // Color del icono y fondo del AppBar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vista Previa Pedido',
          style: TextStyle(color: Colors.white), // Texto blanco en el AppBar
        ),
        backgroundColor: iconColor, // Fondo del AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white), // Icono para editar con texto blanco
            onPressed: () {
              // Mostrar diálogo al presionar el botón de check
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confirmación"),
                    content: Text("¿Desea generar el pedido?"),
                    actions: [
                      TextButton(
                        child: Text("Cancelar"),
                        onPressed: () {
                          Navigator.of(context).pop(); // Cerrar el diálogo
                        },
                      ),
                      TextButton(
                        child: Text("Aceptar"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PedidoGeneradoDark()),
                          ); // Navegar a la nueva pantalla
                          // Ejemplo: Navegar a la primera ventana
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),);// Acción cuando se presiona el botón de menú
            },
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app, color: Colors.white), // Icono para imprimir con texto blanco
            onPressed: () {
              // Acción cuando se presiona el botón de imprimir
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondofmapp.jpg'), // Fondo de la pantalla
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.visibility, color: iconColor), // Icono para vista previa
                  SizedBox(width: 10),
                  Text(
                    'Vista previa del pedido',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: iconColor), // Icono para cliente
                      SizedBox(width: 10),
                      Text(
                        'Cliente: Cliente X', // Datos del cliente
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.confirmation_number, color: iconColor), // Icono para RIF
                      SizedBox(width: 10),
                      Text(
                        'RIF: 123456789', // RIF del cliente
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.payment, color: iconColor), // Icono para condición de pago
                      SizedBox(width: 10),
                      Text(
                        'Condición de pago: Contado', // Condición de pago
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: iconColor), // Icono para dirección de facturación
                      SizedBox(width: 10),
                      Text(
                        'Facturar en: Dirección de facturación', // Dirección de facturación
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.list, color: iconColor), // Icono para número de ítems
                      SizedBox(width: 10),
                      Text(
                        'Número de ítems: 10', // Número de ítems en el pedido
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.card_travel, color: iconColor), // Icono para total de cajas
                      SizedBox(width: 10),
                      Text(
                        'Total de cajas: 5', // Total de cajas en el pedido
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.balance_sharp, color: iconColor), // Icono para total de cajas
                      SizedBox(width: 10),
                      Text(
                        'Kilos: 5', // Total de cajas en el pedido
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money, color: iconColor), // Icono para subtotal
                      SizedBox(width: 10),
                      Text(
                        'Subtotal: \$100.00', // Subtotal del pedido
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on, color: iconColor), // Icono para IVA
                      SizedBox(width: 10),
                      Text(
                        'IVA: \$12.00', // IVA del pedido
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.payment_outlined, color: iconColor), // Icono para total a pagar
                      SizedBox(width: 10),
                      Text(
                        'Total a pagar: \$112.00', // Total a pagar
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Espacio entre el texto y el separador
                  const Divider( // Separador arriba del código
                    color: const Color.fromARGB(255, 3, 54, 95),
                    thickness: 1,
                    height: 10,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Tasa:', // Total a tasa
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'Total Bs:', // Total a pagar
                        style: TextStyle(fontSize: 14),
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
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ingrese la Observación',
                            border: UnderlineInputBorder(), // Utiliza UnderlineInputBorder para solo una línea debajo
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                          keyboardType: TextInputType.text, // Cambiado a TextInputType.text
                          maxLines: null, // Para hacerlo más amplio, se establece maxLines en null
                          // Puedes agregar más propiedades según tus necesidades, como controladores de texto, validadores, etc.
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Nro. Orden compra ',
                            border: UnderlineInputBorder(), // Utiliza UnderlineInputBorder para solo una línea debajo
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          ),
                          keyboardType: TextInputType.text, // Cambiado a TextInputType.text
                          maxLines: null, // Para hacerlo más amplio, se establece maxLines en null
                          // Puedes agregar más propiedades según tus necesidades, como controladores de texto, validadores, etc.
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


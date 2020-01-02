import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones=['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compomentes Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text( opt ),
      );

      lista..add(tempWidget)
        ..add(Divider());
      
    }

    return lista;

  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item+'!'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon(Icons.adb),//coloca iconos al inicio del elemento
            trailing: Icon(Icons.arrow_right),//coloca iconos al final del elemento
            onTap: () {},
          ),
          Divider(),
        ],
      );

    }).toList();

  }

}
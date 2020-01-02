import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
          _cardTipo1(), 
          SizedBox(height: 30.0), 
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blueGrey),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text(
                'Aqui esta el texto que quiero mostrarles: Contrariamente a la creencia popular, Lorem Ipsum no es simplemente un texto aleatorio. Tiene raíces en una pieza de literatura latina clásica del 45 a. C., con más de 2000 años de antigüedad. Richard McClintock,'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                // color: Colors.greenAccent,
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                // color: Colors.greenAccent,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.simonnoriega.com/imagenes/2018/03/PAISAJES-Simon-Noriega-Rivera-8.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.simonnoriega.com/imagenes/2018/03/PAISAJES-Simon-Noriega-Rivera-8.jpg'),
          // ),

          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea de que poner'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), 
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}

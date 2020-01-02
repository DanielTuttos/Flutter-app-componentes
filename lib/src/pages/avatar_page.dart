import 'package:flutter/material.dart';

class Avatarpage extends StatelessWidget {
  const Avatarpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://elpais.com/elpais/imagenes/2018/11/13/gente/1542123826_040867_1542176366_noticia_fotograma.jpg'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage('https://elpais.com/elpais/imagenes/2018/11/13/gente/1542123826_040867_1542176366_noticia_fotograma.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ),
    );
  }
}
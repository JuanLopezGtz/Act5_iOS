import 'package:flutter/material.dart';

void main() => runApp(CardApp());

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('_- Card de Imagenes Lopez -_'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () {},
            ),
          ], //Fin de widget[]
        ), //Fin de appbar
        body: Container(
          child: ListView(children: <Widget>[
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image01.jpg?raw=true', 'Doberman', 'Potencialmente peligroso'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image02.jpg?raw=true', 'Bulldog', 'Simbolo de Inglaterra'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image03.jpg?raw=true', 'Labrador retriever', 'Perros trabajadores'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image04.jpg?raw=true', 'Pomerania', 'Perro juguete'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image05.jpg?raw=true', 'Pastor alemán', 'Perro policia'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image06.jpg?raw=true', 'Chihuahua', 'Familiar'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image07.jpg?raw=true', 'Husky siberiano', 'Perro de trabajo para tirar de los trineos'), //x item
            SizedBox(
              height: 5.0,
            ),
            _items('https://github.com/JuanLopezGtz/Imagenes_Act5/blob/main/image08.jpg?raw=true', 'Rottweiler', 'Perro guardián'), //x item
            SizedBox(
              height: 5.0,
            ),
          ] //Fin de widget[]
              ), //Fin de listview
        ), //Fin de container
      ), //Fin de scaffold
    ); //Fin de materialapp
  } //Fin del widget

  Widget _items(String url, String producto, String subtitulo) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.grey[850],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyanAccent,
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text(subtitulo, style: TextStyle(color: Colors.grey, fontSize: 9.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin de clase cardapp

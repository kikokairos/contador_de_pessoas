import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: home()));
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _pessoa = 0;
  String _infoText = "Pode entrar";


  void _changePeople(int delta){
    setState(() {
      _pessoa+=delta;

      if(_pessoa<0){
        _infoText="Mundo invertido?!";
      }else if(_pessoa<=10){
        _infoText="Pode entrar";
      }else{
        _infoText="Lotado!!!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/marvel.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$_pessoa",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("Botão +",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      onPressed: () {
                        _changePeople(1);
                      }),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      child: Text("Botão -",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      onPressed: () {
                        _changePeople(-1);
                      }),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ],
        )
      ],
    );
  }
}

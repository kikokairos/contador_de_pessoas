import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Column(
      children: <Widget>[
        Text(".", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            child: Text("."),
            onPressed: (){}
        ),
      ],
    )
  ));
}
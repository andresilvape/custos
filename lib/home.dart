import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Custo Mensal',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: new Container(
            //adding padding around card
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new MyCard(
                      title: new Text("Adicionar Categoria",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.add_business_outlined,
                          size: 40.0, color: Colors.redAccent)),
                  new MyCard(
                      title: new Text("Adicionar Despesa",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.money_off_csred_outlined,
                          size: 40.0, color: Colors.brown)),
                  new MyCard(
                      title: new Text("Listar Gastos",
                          style: new TextStyle(fontSize: 20.0)),
                      icon: new Icon(Icons.visibility,
                          size: 40.0, color: Colors.blue))
                ])));
  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        //adding bottom padding on card
        padding: new EdgeInsets.only(bottom: 20.0),
        child: new Card(
            child: new Container(
                //adding padding inside card
                padding: new EdgeInsets.all(15.0),
                child: new Column(children: <Widget>[
                  // new Text("I love Flutter"),
                  // new Icon(Icons.favorite)

                  this.title,
                  this.icon
                ]))));
  }
}

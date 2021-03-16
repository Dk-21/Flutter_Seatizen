

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SeatiZen',
      home: new MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
  class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {

    return new Scaffold(
    appBar: AppBar(title: Text('SeatiZen')),

      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('BusDemo').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return Text('Loading Data ... Please Wait...');
          }
          return Column(
            children: <Widget>[
              Text(snapshot.data.document[0]['Device']),
              Text(snapshot.data.documet[0]['capacity']),
              Text(snapshot.data.document[0]['count_down']),
              Text(snapshot.data.documet[0]['count_up']),
            ],
          );
        },
      ),
      );
    }
}



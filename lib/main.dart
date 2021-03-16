import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';


/*

class Record {
  final String name;
  final String rName;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['r_name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        rName = map['r_name'],
        votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes:$rName>";
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baby Name Votes')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('baby').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Votes')),
            DataColumn(label: Text('Rapper\nname')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text(record.name)),
              DataCell(Text(record.votes.toString())),
              DataCell(Text(record.rName)),
            ])
          ],
        ),
      ),
    );
  }
}

*/
/*
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeatiZen',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('SeatiZen')),
      body: MyStatelessWidget(),
    );
  }
}





/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Bus_Id',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'No_of_Steps',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Up-Down',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: const <DataRow>[

        DataRow(
          cells: <DataCell>[
            DataCell(Text('BRTS 1')),
            DataCell(Text('4')),
            DataCell(Text('25-30')),
          ],
        ),
      ],
    );
  }
}


*/

/*
/// for snapshots

Future<DocumentSnapshot> getDocument() async {
  return FirebaseFirestore.instance
      .collection('BusDemo')
      .doc('-MTnp6YefrbxDhPLMW-_')
      .get();
}


/// Error Recognisition


@override
Widget build(BuildContext context) {

  return Container(
      child: Center(
      child: FutureBuilder(
      future: getDocument(),
  builder: (BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) return Text('Error has occured');
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    }
  }
  )));
}
///

  if (snapshot.hasData) {
  return Column(
  children: <Widget>[
  Text(snapshot.data.data['Device']),
  ],
  );
  }

*/

/*
StreamBuilder(
stream: FirebaseFirestore.instance.collection("BusDemo").snapshots(),
builder: (context, snapshot) {},
);
builder: (context, snapshot) {
return !snapshot.hasData
? Text('PLease Wait')
    : ListView.builder(
itemCount: snapshot.data.documents.length,
itemBuilder: (context, index) {
DocumentSnapshot products =
snapshot.data.documents[index];
return ProductItem(
name: products['name'],
imageUrl: products['imageURL'],
price: products['price'],
discription: products['description'],
);
},
);
}
*/

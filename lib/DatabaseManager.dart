import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager{
  final CollectionReference ProfileList = FirebaseFirestore.instance.collection('prototype-pcs-default-rtdb');

  Future<void> createEntry(
      int bus_id,int capacity,int count_down,int count_up) async {
    return await ProfileList.document(bus_id).setData({
      'Device': bus_id,
      'capacity': capacity,
      'count_down': count_down,
      'count_up': count_up
    });
  }
    Future getUserList() async{
    try{
        await p
    }
    }

  )


}
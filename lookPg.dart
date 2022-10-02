import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pg_near_kuk/pgBox.dart';
import 'pgBox.dart';
class PgData extends StatefulWidget {
  const PgData({Key? key}) : super(key: key);

  @override
  State<PgData> createState() => _PgDataState();
}

class _PgDataState extends State<PgData> {
  final _fireStore=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child:
        Text('Your Search for PG ends Here!',style: TextStyle(color: Colors.blueGrey,fontSize: 40),),),
        Flexible(child: 
     StreamBuilder<QuerySnapshot>(
      stream: _fireStore.collection('pgdata').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading...");
        }
       List<MyPG>myWidgets= snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return MyPG(data['Name'], data['Gate'], data['Number'], data['Fees'], data['Capacity'],data['Dist'], data['Location']);
          }).toList();
        return ListView(
           children: myWidgets,
        );
      }),),
      ]);
  }
}
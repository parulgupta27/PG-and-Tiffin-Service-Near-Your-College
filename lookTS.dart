import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pg_near_kuk/tsBox.dart';
import 'tsBox.dart';
class TsData extends StatefulWidget {
  const TsData({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<TsData> createState() => _TsDataState();
  
}
class _TsDataState extends State<TsData> {
  final _fireStore=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child:
        Text('Your Search for Tiffin Service ends Here!',style: TextStyle(color: Colors.blueGrey,fontSize: 35),),),
        Flexible(child: 
     StreamBuilder<QuerySnapshot>(
      stream: _fireStore.collection('tsdata').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading...");
        }
       List<MyTS>myWidgets= snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return MyTS(data['Name'], data['Breakfast'],data['Lunch'], data['Dinner'], data['Fees'], data['Number']);
          }).toList();
        return ListView(
           children: myWidgets,
        );
      }),),
      ]);
  }
}
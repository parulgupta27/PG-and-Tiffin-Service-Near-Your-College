import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'varibles.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _fireStore=FirebaseFirestore.instance;
  var controller1=TextEditingController();
  var controller2=TextEditingController();
  var controller3=TextEditingController();
  var controller4=TextEditingController();
  var controller5=TextEditingController();
  var controller6=TextEditingController();
  var controller7=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Hero(
         tag: "Home",
         child: Padding(padding: EdgeInsets.symmetric(horizontal: 50) ,
        child:Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.home,size: 50,),
            SizedBox(width: 10,),
            Text('Add a New PG Service :)',style: TextStyle(color: Colors.blueGrey,fontSize: 18),)
          ],
        ),
       ),),
        SizedBox(height: 20,),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
              controller: controller1,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Name of PG',
            filled: true,
            ),
            onChanged: (value){
              name=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
              controller: controller2,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Nearest Gate of KU',
            filled: true,
            ),
            onChanged: (value){
              gate=value;
            },
            ),),
          ],
        ),
      SizedBox(height: 25,),
      SizedBox(
              
              width: 380,
              child:
            TextField(
              controller: controller3,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Location',
            filled: true,
            ),
            onChanged: (value){
              location=value;
            },
            ),),
      SizedBox(height: 25,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
              controller: controller4,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Contact Number',
            filled: true,
            ),
            onChanged: (value){
              number=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
              controller: controller5,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Fees',
            filled: true,
            ),
            onChanged: (value){
              fees=value;
            },
            ),),
          ],
        ),
        SizedBox(height: 25,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 180,
              child:
            TextField(
            controller: controller7,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Capacity',
            filled: true,
            ),
            onChanged: (value){
              capcity=value;
            },
            ),),
            SizedBox(width: 20,),
            SizedBox(
              width: 180,
              child:
            TextField(
              controller: controller6,
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Distance from University',
            filled: true,
            ),
            onChanged: (value){
              dist=value;
            },
            ),),
          ],
        ),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        RaisedButton(onPressed: ()async{
        if(capcity.length==0||number.length==0||name.length==0||location.length==0
        ||fees.length==0||gate.length==0||dist.length==0){
        controller1.clear();
        controller2.clear();
        controller3.clear();
        controller4.clear();
        controller5.clear();
        controller6.clear();
        controller7.clear();
        Fluttertoast.showToast(msg: "Enter Correct Information",
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        fontSize: 20,
        textColor: Colors.white,
        );
        }
        else{
        await _fireStore.collection('pgdata').add({
        'Capacity':capcity,
        'Number':number,
        'Name':name,
        'Dist':dist,
        'Gate':gate,
        'Fees':fees,
        'Location':location,
        },
        );
        Fluttertoast.showToast(msg: "Successfully Added",
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.greenAccent,
        fontSize: 20,
        textColor: Colors.white,
        );
        controller1.clear();
        controller2.clear();
        controller3.clear();
        controller4.clear();
        controller5.clear();
        controller6.clear();
        controller7.clear();}
        },

        color: Colors.white,
        child: Text("Register",style: TextStyle(color: Colors.blueGrey),),),
        SizedBox(width: 40,)
        ],
      ),

      ],
      ),
      ));
  }
}

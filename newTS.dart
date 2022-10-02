import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RegisterTs extends StatefulWidget {

  const RegisterTs({Key? key}) : super(key: key);

  @override
  State<RegisterTs> createState() => _RegisterTsState();
}

class _RegisterTsState extends State<RegisterTs> {
  String name="";
  String breakfast="";
  String lunch="";
  String dinner="";
  String number="";
  String fees="";
  var controller1=TextEditingController();
  var controller2=TextEditingController();
  var controller3=TextEditingController();
  var controller4=TextEditingController();
  var controller5=TextEditingController();
  var controller6=TextEditingController();
  final _firestore=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(child: 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
       Hero(
         tag: 'Home',
         child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.food_bank,size: 50,),
            SizedBox(width: 10,),
            Text('Add a New Tiffin Service :)',style: TextStyle(color: Colors.blueGrey,fontSize: 18),)
          ],
        ),),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey,width:1)),
          child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child:
         Column(

          children: [
        Row(children: [
        SizedBox(
          width: 200 ,
          child: TextField(
            controller: controller1,
            onChanged: (value) {
              name=value;
              
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Name of Tiffin Service',
            filled: true,
            ),
          ), 
        ),
        SizedBox(width: 60,),
        ],),
        SizedBox(height: 10,),
        Row(children: [
          SizedBox(
            width: 170 ,
          child: TextField(
            controller: controller2,
            onChanged: (value) {
              breakfast=value;
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'BreakFast Timing',
            filled: true,
            ),
          )
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 170 ,
          child: TextField(
            controller: controller3,
            onChanged: (value) {
              lunch=value;
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Lunch Timing',
            filled: true,
            ),
          )
          ),
          SizedBox(
            width: 20,
          ),
        ],),
        SizedBox(height: 10,),
        Row(children: [
        SizedBox(
          width: 200 ,
          child: TextField(
            controller: controller4,
            onChanged: (value) {
              dinner=value;
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Dinner Timing',
            filled: true,
            ),
          ), 
        ),
        SizedBox(width: 60,),
        ],),
        
        SizedBox(height: 10,),
      Row(children: [
          SizedBox(
            width: 170 ,
          child: TextField(
            controller: controller5,
            onChanged: (value) {
              number=value;
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Contact Number',
            filled: true,
            ),
          )
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 170 ,
          child: TextField(
            controller: controller6,
            onChanged: (value) {
              fees=value;
            },
            decoration: InputDecoration(border: OutlineInputBorder(),
            fillColor: Colors.white,
            labelText: 'Fees Per Month',
            filled: true,
            ),
          )
          ),
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        RaisedButton(onPressed: ()async{
          if(name.length==0||breakfast.length==0||lunch.length==0||dinner.length==0||number.length==0||fees.length==0){
            controller1.clear();
            controller2.clear();
            controller3.clear();
            controller4.clear();
            controller5.clear();
            controller5.clear();
            Fluttertoast.showToast(msg: "Enter Correct Information",
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        fontSize: 20,
        textColor: Colors.white,
        );
          }
          else{
          _firestore.collection('tsdata').add(
         {
        'Name':name,
        'Breakfast':breakfast,
         'Lunch':lunch,
         'Dinner':dinner,
         'Number':number,
         'Fees':fees,
         }
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
          }
        },
        color: Colors.white,
        child: Text("Register",style: TextStyle(color: Colors.blueGrey),),),
        SizedBox(width: 40,)
        ],
      ),
      ],
      ),
        ),),],),
      ),
    ));
  }
}
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pg_near_kuk/addLinks.dart';
import 'package:pg_near_kuk/lookPg.dart';
import 'package:pg_near_kuk/lookTS.dart';
import 'package:pg_near_kuk/newPg.dart';
import 'package:pg_near_kuk/newTS.dart';
import 'package:pg_near_kuk/sucessPage.dart';
import 'lookPg.dart';
import 'buttons.dart';
import 'newPg.dart';
import 'newTS.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}
final items=[
Icon(Icons.home),
Icon(Icons.add),
Icon(Icons.food_bank),
];
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int i=1;
  pressed(int val){
    setState(() {
      i=val;
    });
  }
  final pages=[
  PgData(),
  AddNew(),
  TsData(),
];
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/registerPG':(context) => Register(),
        '/registerTS':(context) => RegisterTs(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light
      ),
     home:Scaffold(
       body: SafeArea(child: pages[i]),
       backgroundColor: Colors.white,
       bottomNavigationBar: CurvedNavigationBar(
         backgroundColor: Colors.transparent,
         items: items,
         height: 50,
         index: i,
         onTap: (value) => {
           pressed(value),
         },
         ),
       
     ),
    );
  }
}



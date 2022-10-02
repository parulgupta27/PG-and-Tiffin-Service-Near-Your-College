import 'package:flutter/material.dart';
class Features extends StatefulWidget {

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(onPressed: (){
        Navigator.pushNamed(context, '/newpg');
        }, 
        child:Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,),
          child:
        Padding(padding:
        EdgeInsets.symmetric(horizontal: 30,vertical: 20) ,
        child:Text("Add A New PG",style: TextStyle(color: Colors.white,fontSize: 25),),
        )
        ),),
        SizedBox(
          height: 20,
        ),
        FlatButton(onPressed: (){
        }, 
        child:
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,),
          child:
        Padding(padding:
        EdgeInsets.symmetric(horizontal: 30,vertical: 20) ,
        child:Text("Add A New Tiffin Service",style: TextStyle(color: Colors.white,fontSize: 25),),
        )
        ),
        ),
         SizedBox(
          height: 20,
        ),
        FlatButton(onPressed: (){
        Navigator.pushNamed(context, '/pgdata');
        }, 
        child:
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,),
          child:
        Padding(padding:
        EdgeInsets.symmetric(horizontal: 30,vertical: 20) ,
        child:Text("Look for a PG",style: TextStyle(color: Colors.white,fontSize: 25),),
        )
        ),
        ),
         SizedBox(
          height: 20,
        ),
        FlatButton(onPressed: (){

        }, 
        child:
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          color: Colors.blueAccent,
          ),
          child:
        Padding(padding:
        EdgeInsets.symmetric(horizontal: 30,vertical: 20) ,
        child:Text("Look for A Tiffin Service",style: TextStyle(color: Colors.white,fontSize: 25),),
        )
        ),
        ),
      ],
    )));
  }
}

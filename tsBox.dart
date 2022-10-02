import 'package:flutter/material.dart';
class MyTS extends StatelessWidget {
  String name;
  String breakfast;
  String lunch;
  String dinner;
  String fees;
  String number;
  MyTS(this.name,this.breakfast,this.lunch,this.dinner,this.fees,this.number);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child:Material(
      elevation: 10,
      child: Container(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.food_bank_rounded,size: 20,),
            SizedBox(width: 10,),
            Text(name,style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.phone,size: 20,),
            SizedBox(width: 10,),
            Text(number,style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
            SizedBox(width: 50,),
            Icon(Icons.money,size: 20,),
            SizedBox(width: 10,),
            Text(fees,style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Text("Breakfast Timing: $breakfast",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),]),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Text("Breakfast Timing: $breakfast",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),]),SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
        children:[
        Text("Breakfast Timing: $breakfast",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),]), ],),
        ),
        decoration: BoxDecoration(
          
        border: Border.all(width: 1,color: Colors.blueGrey),
        ),
      ),
    ));
  }
}
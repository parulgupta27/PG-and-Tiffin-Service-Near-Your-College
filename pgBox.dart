import 'package:flutter/material.dart';
class MyPG extends StatelessWidget {
  MyPG(this.name,this.gate,this.number,this.fees,this.capacity,this.dist,this.location);
  String name;
  String gate;
  String number;
  String fees;
  String capacity;
  String dist;
  String location;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:  10,vertical: 10),
        child:Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1,color: Colors.black),
          ),
          child: Material(
            elevation: 5,
            child:
            Padding(
              padding: EdgeInsets.only(left: 10),
              child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.home,size: 30,),
              SizedBox(width: 10,),
              Text(name,style:TextStyle(fontSize: 30,color: Colors.blueGrey) ,),
              ],
            ),
            SizedBox(height: 8,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('$dist from $gate',style:TextStyle(fontSize: 20,color: Colors.blueGrey)),
              ],
            ),
             SizedBox(height: 8,),
            Row(children: [
            Icon(Icons.person,size: 20,),
            SizedBox(width: 5,),
            Text('$capacity in a Room',style:TextStyle(fontSize: 20,color: Colors.blueGrey)),
            SizedBox(width: 80,),
            Icon(Icons.money),
            SizedBox(width: 5,),
            Text(fees,style:TextStyle(fontSize: 20,color: Colors.blueGrey)),
            ],),
             SizedBox(height: 8,),
            Row(
            children: [
              Icon(Icons.location_city),
              SizedBox(width: 5,),
              Text(location,style:TextStyle(fontSize: 20,color: Colors.blueGrey)),
              SizedBox(width: 70,),
              Icon(Icons.phone),
              SizedBox(width: 5,),
              Text(number,style:TextStyle(fontSize: 20,color: Colors.blueGrey))
            ],
            ),
            SizedBox(height: 8,),
          ]),
          ),
      ),
    )));
  }
}
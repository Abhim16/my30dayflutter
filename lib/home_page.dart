import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name ="chand wala mukad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("catalougggg App"),
      ),
      body:Center(
        child:Center(
          child:Container(
            child: Text("welcome to $days boby days for $name"),
          ),
       ),
     ),
     drawer: Drawer(),
    );
  }
}
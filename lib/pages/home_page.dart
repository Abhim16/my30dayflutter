import 'package:flutter/material.dart';

import '../widget/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name ="chand wala mukad";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Catalog App"),
        
          foregroundColor: Colors.black,),
      
      body:Center(
        child:Center(
          child:Container(
            child: Text("welcome to $days b days for $name"),
          ),
       ),
     ),
     drawer: mydrawer(),
    );
  }
}
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
      
      body:Container(
        constraints: BoxConstraints(
          maxHeight: 200,
          maxWidth: 200,
          minHeight: 70,
          minWidth: 70
          ),
       
        color: Colors.amber,
      
        child: Container(
               height: 100,
               width: 100,
               color: Colors.green,
            ),
      ),
        
      );
     drawer: mydrawer();
    
  }
}
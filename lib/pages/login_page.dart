import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Center(
       child:Text(
         "Login page",
        style:TextStyle(
          fontSize:40,
        color:Color.fromARGB(255, 255, 3, 3),
       fontWeight:FontWeight.bold,
        ),
      ), 
     ),
    );
      
    
  }
}
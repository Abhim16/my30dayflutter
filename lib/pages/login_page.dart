

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:32.0),
           child: Column(
             children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: " Enter username",
                labelText: "username"
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: " Enter password",
                labelText: "password"
              ),
            ),
            SizedBox(
            height: 20.0,
          ),
          ElevatedButton(child: Text("login"),
          style: TextButton.styleFrom(),
          onPressed: (){
            print("hi programmig");
          },

           ), ],
            ),
         ),

          Text(
            "welcome back",
            style:TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
         
      ),
      )
      ],
      )
    );
      
    
  }
}
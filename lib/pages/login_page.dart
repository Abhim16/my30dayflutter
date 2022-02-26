

import 'package:flutter/material.dart';
import 'package:flutter_one/pages/home_page.dart';
import 'package:flutter_one/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name ="";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      
      child:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "welcome $name",
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold),),
                SizedBox(
              height: 20.0,),
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
                onChanged: (value){
                  name = value;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(onTap: ()async{
                setState(() {
                  changeButton=true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context,MyRoutes.HomeRoute);
               },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  
                  height:50.0,width:changeButton?50: 100.0,
                  alignment: Alignment.center,
                  child:changeButton?Icon(Icons.done,color:Colors.white):Text("Login",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:18),),
                  decoration: BoxDecoration(color:Color.fromARGB(199, 51, 14, 216),
                  // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                   borderRadius: BorderRadius.circular(changeButton?20:10)
              
                  ),
                  
                ),
              ),
              
              
          //  ElevatedButton(child: Text("login"),
          //   style: TextButton.styleFrom(),
          //   onPressed: (){
          //     Navigator.pushNamed(context,MyRoutes.HomeRoute);
          //   },
      
          //    ), 
          ],
              ),
           
           ),
      
            
           
        
        
        ],
        ),
      )
    );
      
    
  }
}
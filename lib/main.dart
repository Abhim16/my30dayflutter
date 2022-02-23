import 'package:flutter/material.dart';
import 'package:flutter_one/pages/home_page.dart';
import 'package:flutter_one/pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key?  key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.dark,
      theme:ThemeData(
        primarySwatch:Colors.brown
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
      routes:{
         "/" :(context) => LoginPage(),
        "/" :(context) => HomePage(),
        "/":(context) => LoginPage()
      },
    );
  }

  

  }
    
  


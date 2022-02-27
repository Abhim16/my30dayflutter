import 'package:flutter/material.dart';
import 'package:flutter_one/pages/home_page.dart';
import 'package:flutter_one/pages/login_page.dart';
import 'package:flutter_one/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch:Colors.brown,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light
      ),
      initialRoute:MyRoutes.HomeRoute ,
      routes:{
         "/" :(context) => LoginPage(),
         MyRoutes.HomeRoute:((context) => HomePage()),
         MyRoutes.loginRoute:(context) => LoginPage()
      },
    );
  }

  

  }
    
  


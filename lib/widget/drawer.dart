import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mydrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final ImageUrl ="https://cdn.pocket-lint.com/r/s/1200x/assets/images/146898-phones-feature-the-best-apple-iphone-photos-ever-taken-image1-ydter7skel.jpg";
    
    return Drawer(
      child: Container(
        color:Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
             // margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
              //  decoration: BoxDecoration(color: Color.fromARGB(255, 51, 162, 226)),
              margin:EdgeInsets.zero,
              accountName:Text("Abhishek mishra"),
            accountEmail:Text("abhishekmishra1662000@gmail.com"),
            currentAccountPicture:CircleAvatar(backgroundImage:NetworkImage(ImageUrl),)
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                ),),
                ListTile(
                 leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                ),),
                ListTile(
                 leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,),
                title: Text(
                  "Mail me",
                  textScaleFactor: 1.2,
                ),
            ),
            

          ],
        ),
      ),
    );
  }
}
  
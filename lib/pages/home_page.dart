import 'package:flutter/material.dart';
import 'package:flutter_one/models/catalog.dart';
import 'package:flutter_one/widget/drawer.dart';
import 'package:flutter_one/widget/item_widget.dart';





class HomePage extends StatelessWidget {
  final int days = 30;
  final String name ="chand wala mukad";

  @override
  Widget build(BuildContext context) {
    var mydrawer2 = mydrawer();
    final dummylist = List.generate(50,(index) => CatalogModel.items[0]);
    return Scaffold(
      appBar:AppBar(
        title: Text("Catalog App"),
        
          foregroundColor: Colors.black,),
      
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummylist[index],);
          }
        ),
      ),
           drawer: mydrawer()      );
    
    
  }
}
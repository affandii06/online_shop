import 'package:flutter/material.dart';
import 'package:online_shop/provider/kategoriprovider.dart';
import 'package:provider/provider.dart';

class DetailProduk extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('X', style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),),
            Text('E', style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite, color: Colors.black,),
              onPressed: (){

              }
          ),
        ],
        backgroundColor: Colors.grey[50],
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}



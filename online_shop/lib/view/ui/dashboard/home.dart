import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/view/widget/kategori.dart';
import 'package:online_shop/view/widget/produk.dart';

class Home extends StatelessWidget {
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
          icon: Icon(Icons.apps, color: Colors.black,),
          onPressed: (){

          }
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black,),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Our Product', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text('Sort by ', style: GoogleFonts.poppins(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_drop_down, color: Colors.black54)
                  ],
                )
              ],
            ),
            SizedBox(height: 15,),

            //list kategori
            Kategori(),

            SizedBox(height: 15,),

            //listproduk
            Produk(),

          ],
        ),
      )
    );
  }
}

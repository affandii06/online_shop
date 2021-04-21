import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/provider/kategoriprovider.dart';
import 'package:provider/provider.dart';

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ChangeNotifierProvider<KategoriProvider>(
        create: (context) => KategoriProvider(),
        child: Consumer<KategoriProvider>(
          builder: (context, kategori, _) => ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kategori.kategori.length,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(kategori.kategori[index]['image'], width: 50, height: 50,),
                        Text(kategori.kategori[index]['label'], style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  print(index);
                  kategori.selected = index;
                },
              );
            }
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/provider/kategoriprovider.dart';
import 'package:online_shop/view/ui/produk/detailproduk.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class Produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<KategoriProvider>(
      create: (context) => KategoriProvider(),
      child: Consumer<KategoriProvider>(
        builder: (context, produk, _)=> GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7
          ),
          itemCount: produk.produk.length ==  0 ? 1 : produk.produk.length ,
          itemBuilder: (BuildContext context, int index){
            return produk.produk.length != 0 ?
              InkWell(
                child: Card(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          child: Image.asset(
                            produk.produk[index]['image'], height: 100,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            fit: BoxFit.fitWidth,)
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        height: 35,
                        child: Text(produk.produk[index]['label'],
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.attach_money, color: Colors.blue,),
                            Text(produk.produk[index]['price'],
                                style: GoogleFonts.poppins(fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,)),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBarIndicator(
                            rating: double.parse(
                                produk.produk[index]['rating']),
                            itemBuilder: (context, index) =>
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            itemCount: 5,
                            itemSize: 18,
                            direction: Axis.horizontal,
                          ),
                          Text(produk.produk[index]['rating'] + ' /5',
                              style: GoogleFonts.poppins(fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,))
                        ],
                      ),
                    ],
                  ),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                onTap: (){
                  produk.detailproduk = index;
                  Navigator.push(context, PageTransition(child: DetailProduk(), type: PageTransitionType.rightToLeft));
                },
              )
            : Center(
                child: Text('Tidak Ada Data'),
              );
          }
        ),
      ),
    );
  }
}

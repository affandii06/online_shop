import 'package:flutter/material.dart';
import 'package:online_shop/provider/changepagenav.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangePage>(
      create: (context)=> ChangePage(),
      child: Scaffold(
        body: Consumer<ChangePage>(
          builder: (context, page, _) => page.page[page.currentindex]
        ),

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          backgroundColor: Colors.blue,
          child: Center(
            child: Icon(Icons.shopping_cart_rounded, color: Colors.white70,)
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          elevation: 6,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Consumer<ChangePage>(
              builder: (context, page, _) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.home_filled, color: page.home,),
                    ),
                    onTap: (){
                      page.color = 0;
                      page.curentindex = 0;
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,10,50,10),
                      child: Icon(Icons.favorite, color: page.fav,),
                    ),
                    onTap: (){
                      page.color = 1;
                      page.curentindex = 1;
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,10,10),
                      child: Icon(Icons.list_alt_rounded, color: page.list,),
                    ),
                    onTap: (){
                      page.color = 2;
                      page.curentindex = 2;
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(Icons.people, color: page.profile,),
                    ),
                    onTap: (){
                      page.color = 3;
                      page.curentindex = 3;
                    },
                  ),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}

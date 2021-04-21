import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/view/ui/dashboard/favorite.dart';
import 'package:online_shop/view/ui/dashboard/home.dart';
import 'package:online_shop/view/ui/dashboard/listorder.dart';
import 'package:online_shop/view/ui/dashboard/profile.dart';

class ChangePage with ChangeNotifier{
  int _currentindex = 0;
  List page = [
    Home(),
    Favorite(),
    ListOrder(),
    Profile()
  ];

  int _color = 1;

  Color home = Colors.blue[700];
  Color fav = Colors.black54;
  Color list = Colors.black54;
  Color profile = Colors.black54;

  get currentindex => _currentindex;
  set curentindex (int value) {
    _currentindex = value;
    notifyListeners();
  }

  get color => _color;
  set color (int value) {
    _color = value;
    if(_color == 0){
      home = Colors.blue[700];
      fav = Colors.black54;
      list = Colors.black54;
      profile = Colors.black54;
      notifyListeners();
    }
    if(_color == 1){
      home = Colors.black54;
      fav = Colors.blue[700];
      list = Colors.black54;
      profile = Colors.black54;
      notifyListeners();
    }
    if(_color == 2){
      home = Colors.black54;
      fav = Colors.black54;
      list = Colors.blue[700];
      profile = Colors.black54;
      notifyListeners();
    }
    if(_color == 3){
      home = Colors.black54;
      fav = Colors.black54;
      list = Colors.black54;
      profile = Colors.blue[700];
      notifyListeners();
    }
    notifyListeners();
  }
}
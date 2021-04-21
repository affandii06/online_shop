import 'package:flutter/foundation.dart';
import 'package:online_shop/model/kategorimodel.dart';
import 'package:online_shop/model/produkmodel.dart';

class KategoriProvider with ChangeNotifier{

  List kategori = ModelKategori().kategori;
  List _produk =[
    ModelProduk().sneakers,
    ModelProduk().watch,
    ModelProduk().backpack,
  ];

  int _selected = 0;

  get selected => _selected;
  get produk => _produk[_selected];
  set selected (int value){
    _selected = value;
    if(_selected == 0){
      _produk[_selected];
      print(produk);
      notifyListeners();
    }
    if(_selected == 1){
      _produk[_selected];
      print(produk);
      notifyListeners();
    }
    if(_selected == 2){
      _produk[_selected];
      print(produk);
      notifyListeners();
    }
  }

  var detail;
  set detailproduk (int value){
    if(value == 0){
      detail = ModelProduk().detailsneakers1;

      notifyListeners();
    }
    if(value == 1){
      detail = ModelProduk().detailsneakers2;

      notifyListeners();
    }
    if(value == 2){
      detail = ModelProduk().detailsneakers3;

      notifyListeners();
    }
    if(value == 3){
      detail = ModelProduk().detailsneakers4;

      notifyListeners();
    }
  }

}
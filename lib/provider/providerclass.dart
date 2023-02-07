import 'package:flutter/material.dart';
class Providerclass with ChangeNotifier{
  List cart=[];
  List get favorite =>cart;

  void favitems(String itemName){
    final favList= cart.contains(itemName);
    if(favList){
      cart.remove(itemName);
    }else{
      cart.add(itemName);
    }
    notifyListeners();
}
  bool check(String itemName){
    final checking=cart.contains(itemName);
    return checking;
  }
}
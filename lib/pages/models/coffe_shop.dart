import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop  extends ChangeNotifier{
  final List <Coffee> _shop = [
    Coffee(
        name: 'Long black',
        price: "4.10",
        imagePath: "lib/images/cafe-expresso.png",
        ),
    Coffee(
        name: 'Expresso',
        price: "3.50",
        imagePath: "lib/images/cafe-caliente.png",
        ),
    Coffee(
        name: 'Latte',
        price: "4.20", 
        imagePath: "lib/images/cold-coffee.png",
        ),
    Coffee(
        name: 'Iced Coffee',
        price: "4.40",
        imagePath: "lib/images/hot-tea.png",
        ),
  ];
  List<Coffee> _userCart = [

  ];
  List<Coffee> get coffeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart (Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  void removeItemToCart (Coffee coffee){
    _userCart.remove(coffee);
        notifyListeners();

  }
}

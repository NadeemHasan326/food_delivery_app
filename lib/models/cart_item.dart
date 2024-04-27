import 'package:food_delivery_app/models/food.dart';

class CartItem {
  final FoodModel foodModel;
  final List<Addon> selectedAddons;
  int quantity;
  CartItem(
      {required this.foodModel,
      this.quantity = 1,
      required this.selectedAddons});

  // get total price
  double totalPrice() {
    double addonsPrice = selectedAddons.fold(
        0, (previousValue, element) => previousValue + element.price!);
    return (addonsPrice + foodModel.price!) * quantity;
  }
}

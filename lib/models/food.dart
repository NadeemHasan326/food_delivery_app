class FoodModel {
  final String? name;
  final String? description;
  final double? price;
  final String? image;
  final FoodCategory? category;
  final List<Addon>? addons;
  FoodModel({this.description,this.addons,this.category, this.image, this.name, this.price});
}

enum FoodCategory { burgres, salads, sides, deserts, drinks }

class Addon {
  final String? name;
  final double? price;
  bool isSelected = false;
  Addon({this.name, this.price});
}

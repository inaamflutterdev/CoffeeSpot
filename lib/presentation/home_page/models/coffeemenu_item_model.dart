import '../../../core/app_export.dart';

/// This class is used in the [coffeemenu_item_widget] screen.
class CoffeemenuItemModel {
  CoffeemenuItemModel({
    this.coffeeImage,
    this.coffeeName,
    this.coffeeDescription,
    this.price,
    this.id,
  }) {
    coffeeImage = coffeeImage ?? Rx(ImageConstant.imgRectangle1706);
    coffeeName = coffeeName ?? Rx("Cappucino");
    coffeeDescription = coffeeDescription ?? Rx("with Chocolate");
    price = price ?? Rx(" 4.53");
    id = id ?? Rx("");
  }

  Rx<String>? coffeeImage;

  Rx<String>? coffeeName;

  Rx<String>? coffeeDescription;

  Rx<String>? price;

  Rx<String>? id;
}

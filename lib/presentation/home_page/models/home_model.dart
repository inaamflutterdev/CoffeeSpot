import '../../../core/app_export.dart';
import 'coffeemenu_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<CoffeemenuItemModel>> coffeemenuItemList = Rx([
    CoffeemenuItemModel(
        coffeeImage: ImageConstant.imgRectangle1706.obs,
        coffeeName: "Cappucino".obs,
        coffeeDescription: "with Chocolate".obs,
        price: " 4.53".obs),
    CoffeemenuItemModel(
        coffeeImage: ImageConstant.imgRectangle1707.obs,
        coffeeName: "Cappucino".obs,
        coffeeDescription: "with Oat Milk".obs,
        price: " 3.90".obs),
    CoffeemenuItemModel(
        coffeeImage: ImageConstant.imgRectangle1706132x141.obs,
        coffeeName: "Cappucino".obs,
        coffeeDescription: "with Chocolate".obs,
        price: " 4.53".obs),
    CoffeemenuItemModel(
        coffeeImage: ImageConstant.imgRectangle1707132x142.obs,
        coffeeName: "Cappucino".obs,
        coffeeDescription: "with Oat Milk".obs,
        price: " 3.90".obs)
  ]);
}

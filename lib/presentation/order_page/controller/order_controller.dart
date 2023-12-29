import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/presentation/order_page/models/order_model.dart';

/// A controller class for the OrderPage.
///
/// This class manages the state of the OrderPage, including the
/// current orderModelObj
class OrderController extends GetxController {
  OrderController(this.orderModelObj);

  Rx<OrderModel> orderModelObj;
}

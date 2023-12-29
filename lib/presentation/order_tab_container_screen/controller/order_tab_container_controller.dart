import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/presentation/order_tab_container_screen/models/order_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrderTabContainerScreen.
///
/// This class manages the state of the OrderTabContainerScreen, including the
/// current orderTabContainerModelObj
class OrderTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<OrderTabContainerModel> orderTabContainerModelObj =
      OrderTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}

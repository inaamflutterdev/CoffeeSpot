import '../controller/order_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderTabContainerScreen.
///
/// This class ensures that the OrderTabContainerController is created when the
/// OrderTabContainerScreen is first loaded.
class OrderTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderTabContainerController());
  }
}

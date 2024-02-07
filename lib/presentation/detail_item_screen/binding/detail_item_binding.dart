import '../controller/detail_item_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailItemScreen.
///
/// This class ensures that the DetailItemController is created when the
/// DetailItemScreen is first loaded.
class DetailItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailItemController());
  }
}

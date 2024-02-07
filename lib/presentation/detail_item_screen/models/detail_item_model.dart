import 'eight_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [detail_item_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailItemModel {
  Rx<List<EightItemModel>> eightItemList =
      Rx(List.generate(3, (index) => EightItemModel()));
}

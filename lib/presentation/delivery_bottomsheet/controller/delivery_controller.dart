import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/presentation/delivery_bottomsheet/models/delivery_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the DeliveryBottomsheet.
///
/// This class manages the state of the DeliveryBottomsheet, including the
/// current deliveryModelObj
class DeliveryController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<DeliveryModel> deliveryModelObj = DeliveryModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}

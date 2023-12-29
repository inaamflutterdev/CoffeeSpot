import 'controller/delivery_controller.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/widgets/custom_icon_button.dart';
import 'package:coffeespot/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class DeliveryBottomsheet extends StatelessWidget {
  DeliveryBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  DeliveryController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 5.v,
            width: 44.h,
            decoration: BoxDecoration(
              color: appTheme.gray200,
              borderRadius: BorderRadius.circular(
                2.h,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_10_minutes_left".tr,
            style: CustomTextStyles.titleMediumBluegray90002,
          ),
          SizedBox(height: 7.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_delivery_to".tr,
                  style: CustomTextStyles.bodySmallOnError_1,
                ),
                TextSpan(
                  text: "lbl_jl_kpg_sutoyo".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 18.v),
          Obx(
            () => CustomPinCodeTextField(
              context: Get.context!,
              controller: controller.otpController.value,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: CustomIconButton(
                    height: 62.adaptSize,
                    width: 62.adaptSize,
                    padding: EdgeInsets.all(15.h),
                    decoration: IconButtonStyleHelper.outlineGrayTL12,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconBike,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 1.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_delivered_your_order".tr,
                        style: CustomTextStyles.titleSmallBluegray90002,
                      ),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 190.h,
                        child: Text(
                          "msg_we_deliver_your".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnError.copyWith(
                            height: 1.54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 54.adaptSize,
                width: 54.adaptSize,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_johan_hawn".tr,
                      style: CustomTextStyles.titleSmallBluegray90002,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "msg_personal_courier".tr,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 54.adaptSize,
                width: 54.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.outlineGrayTL14,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCall,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }
}

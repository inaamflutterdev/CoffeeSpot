import 'controller/order_controller.dart';
import 'models/order_model.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/widgets/custom_elevated_button.dart';
import 'package:coffeespot/widgets/custom_icon_button.dart';
import 'package:coffeespot/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  OrderPage({Key? key})
      : super(
          key: key,
        );

  OrderController controller = Get.put(OrderController(OrderModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_delivery_address".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_jl_kpg_sutoyo".tr,
                        style: CustomTextStyles.titleSmallBluegray90002,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "msg_kpg_sutoyo_no".tr,
                        style: CustomTextStyles.bodySmallOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Row(
                        children: [
                          _buildEditAddressButton(),
                          _buildAddNoteButton(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Divider(
                    indent: 30.h,
                    endIndent: 30.h,
                  ),
                  SizedBox(height: 19.v),
                  _buildFrameRow(),
                  SizedBox(height: 20.v),
                  Divider(
                    color: appTheme.gray10001,
                  ),
                  SizedBox(height: 19.v),
                  _buildDiscountAppliedRow(),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Text(
                        "lbl_payment_summary".tr,
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildTotalPaymentRow(
                      totalPaymentText: "lbl_price".tr,
                      priceText: "lbl_4_53".tr,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildDeliveryFeeRow(),
                  SizedBox(height: 14.v),
                  Divider(
                    indent: 30.h,
                    endIndent: 30.h,
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: _buildTotalPaymentRow(
                      totalPaymentText: "lbl_total_payment".tr,
                      priceText: "lbl_5_53".tr,
                    ),
                  ),
                  _buildCashColumn(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditAddressButton() {
    return CustomOutlinedButton(
      width: 120.h,
      text: "lbl_edit_address".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgEdit,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNoteButton() {
    return CustomOutlinedButton(
      width: 101.h,
      text: "lbl_add_note".tr,
      margin: EdgeInsets.only(left: 8.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMegaphone,
          height: 14.adaptSize,
          width: 14.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle170654x54,
            height: 54.adaptSize,
            width: 54.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_cappucino".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_with_chocolate".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 13.v),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgUpload,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 17.v,
              bottom: 18.v,
            ),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.titleSmallBluegray90001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: CustomIconButton(
              height: 28.adaptSize,
              width: 28.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusBlueGray90001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountIsApplied() {
    return CustomElevatedButton(
      height: 24.v,
      width: 184.h,
      text: "msg_1_discount_is_applied".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 12.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillOnErrorContainer,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget
  Widget _buildDiscountAppliedRow() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 29.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildDiscountIsApplied(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryFeeRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_delivery_fee".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Spacer(),
          Text(
            "lbl_2_0".tr,
            style: theme.textTheme.bodyMedium!.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_1_0".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCash() {
    return CustomElevatedButton(
      height: 24.v,
      width: 51.h,
      text: "lbl_cash".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL12,
      buttonTextStyle: CustomTextStyles.bodySmallOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildOrder() {
    return CustomElevatedButton(
      text: "lbl_order".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }

  /// Section Widget
  Widget _buildCashColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Container(
                  width: 112.h,
                  margin: EdgeInsets.only(left: 12.h),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    children: [
                      _buildCash(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 3.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl_5_53".tr,
                          style: CustomTextStyles.bodySmallBluegray90001,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconDots,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          _buildOrder(),
          SizedBox(height: 27.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTotalPaymentRow({
    required String totalPaymentText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            totalPaymentText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
        ),
        Text(
          priceText,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }
}

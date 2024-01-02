import 'controller/order_tab_container_controller.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/presentation/order_page/order_page.dart';
import 'package:coffeespot/widgets/app_bar/appbar_leading_image.dart';
import 'package:coffeespot/widgets/app_bar/appbar_title.dart';
import 'package:coffeespot/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderTabContainerScreen extends GetWidget<OrderTabContainerController> {
  const OrderTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  _buildTabview(),
                  SizedBox(
                      height: 655.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [OrderPage(), OrderPage()]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_order".tr));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 48.v,
        width: 315.h,
        decoration: BoxDecoration(
            color: appTheme.gray10002,
            borderRadius: BorderRadius.circular(14.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primaryContainer,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.onErrorContainer,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600),
            indicatorPadding: EdgeInsets.all(4.0.h),
            indicator: BoxDecoration(
                color: appTheme.gray10002,
                borderRadius: BorderRadius.circular(20.h)),
            tabs: [
              Tab(child: Text("lbl_deliver".tr)),
              Tab(child: Text("lbl_pick_up".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

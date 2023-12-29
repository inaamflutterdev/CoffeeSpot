import 'controller/home_tab_container_controller.dart';
import 'models/home_tab_container_model.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:coffeespot/presentation/home_page/home_page.dart';
import 'package:coffeespot/widgets/app_bar/appbar_subtitle.dart';
import 'package:coffeespot/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:coffeespot/widgets/app_bar/appbar_title_image.dart';
import 'package:coffeespot/widgets/app_bar/appbar_trailing_image.dart';
import 'package:coffeespot/widgets/app_bar/custom_app_bar.dart';
import 'package:coffeespot/widgets/custom_elevated_button.dart';
import 'package:coffeespot/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeTabContainerPage extends StatelessWidget {
  HomeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeTabContainerController controller =
      Get.put(HomeTabContainerController(HomeTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              _buildFrameSeventeen(),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(),
                      _buildTabBarView(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventeen() {
    return SizedBox(
      height: 300.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.v),
              decoration: AppDecoration.gradientOnPrimaryToBlueGray,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 44.v,
                    title: Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: Column(
                        children: [
                          AppbarSubtitleOne(
                            text: "lbl_location".tr,
                            margin: EdgeInsets.only(right: 108.h),
                          ),
                          SizedBox(height: 4.v),
                          Row(
                            children: [
                              AppbarSubtitle(
                                text: "msg_bilzen_tanjungbalai".tr,
                              ),
                              AppbarTitleImage(
                                imagePath: ImageConstant.imgArrowDown,
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgPlay,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search_coffee".tr,
                    ),
                  ),
                  SizedBox(height: 84.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.gray20001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Container(
                height: 140.v,
                width: 315.h,
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 140.v,
                      width: 315.h,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomElevatedButton(
                              height: 26.v,
                              width: 60.h,
                              text: "lbl_promo".tr,
                              buttonStyle: CustomButtonStyles.fillRed,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallOnErrorContainer,
                            ),
                            SizedBox(height: 7.v),
                            SizedBox(
                              height: 80.v,
                              width: 200.h,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 27.v,
                                      width: 200.h,
                                      margin: EdgeInsets.only(top: 15.v),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onSecondaryContainer,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 23.v,
                                      width: 149.h,
                                      margin: EdgeInsets.only(bottom: 2.v),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onSecondaryContainer,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      width: 192.h,
                                      child: Text(
                                        "msg_buy_one_get_one".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 38.v,
      width: 345.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onErrorContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.errorContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_cappuccino".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_machiato".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_latte".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_americano".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return SizedBox(
      height: 307.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],
      ),
    );
  }
}

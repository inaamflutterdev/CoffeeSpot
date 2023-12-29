import '../home_page/widgets/coffeemenu_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/coffeemenu_item_model.dart';
import 'models/home_model.dart';
import 'package:coffeespot/core/app_export.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 240.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .homeModelObj.value.coffeemenuItemList.value.length,
                    itemBuilder: (context, index) {
                      CoffeemenuItemModel model = controller
                          .homeModelObj.value.coffeemenuItemList.value[index];
                      return CoffeemenuItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

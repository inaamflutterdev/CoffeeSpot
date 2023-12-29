import 'package:coffeespot/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:coffeespot/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:coffeespot/presentation/home_container_screen/home_container_screen.dart';
import 'package:coffeespot/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:coffeespot/presentation/detail_item_screen/detail_item_screen.dart';
import 'package:coffeespot/presentation/detail_item_screen/binding/detail_item_binding.dart';
import 'package:coffeespot/presentation/order_tab_container_screen/order_tab_container_screen.dart';
import 'package:coffeespot/presentation/order_tab_container_screen/binding/order_tab_container_binding.dart';
import 'package:coffeespot/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:coffeespot/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String detailItemScreen = '/detail_item_screen';

  static const String orderPage = '/order_page';

  static const String orderTabContainerScreen = '/order_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: detailItemScreen,
      page: () => DetailItemScreen(),
      bindings: [
        DetailItemBinding(),
      ],
    ),
    GetPage(
      name: orderTabContainerScreen,
      page: () => OrderTabContainerScreen(),
      bindings: [
        OrderTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    )
  ];
}

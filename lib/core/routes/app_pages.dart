import 'package:flutter_web/core/routes/app_routes.dart';
import 'package:flutter_web/presentation/screen/home/home.dart';
import 'package:flutter_web/presentation/screen/home/home_binding.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: RoutesConstants.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
  ];
}

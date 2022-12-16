import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/lang/language_constant.dart';
import 'package:flutter_web/presentation/screen/home/pages/overview/overview.dart';
import 'package:flutter_web/presentation/screen/home/pages/services/services.dart';
import 'package:flutter_web/presentation/theme/app_asset.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      text: LanguageConstant.home.tr,
    ),
    Tab(
      text: LanguageConstant.services.tr,
    ),
    Tab(
      text: LanguageConstant.ourWorks.tr,
    ),
    Tab(
      text: LanguageConstant.testimonial.tr,
    ),
    Tab(
      text: LanguageConstant.about.tr,
    ),
    Tab(
      text: LanguageConstant.contact.tr,
    ),
    Tab(
      text: LanguageConstant.blog.tr,
    ),
  ];

  final List<Widget> tabViews = <Widget>[
    const OverviewScreen(),
    const ServicesScreen(),
    const OverviewScreen(),
    const ServicesScreen(),
    const OverviewScreen(),
    const ServicesScreen(),
    const OverviewScreen(),
  ];
  late TabController controller;
  RxInt currentIndex = 0.obs;

  List<AssetImage> slider = <AssetImage>[
    const AssetImage(AppAsset.bannerTwo),
    const AssetImage(AppAsset.bannerThree),
    const AssetImage(AppAsset.bannerTwo),
    const AssetImage(AppAsset.bannerThree),
  ];

  @override
  void onInit() async {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  updateCurrentIndex(int index) {
    currentIndex = index.obs;
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}

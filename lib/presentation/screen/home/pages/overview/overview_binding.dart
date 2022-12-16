
import 'package:flutter/material.dart';
import 'package:flutter_web/domain/controller/home/pages/overview_controller.dart';
import 'package:get/get.dart';

class OverviewBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => OverviewController());
    debugPrint("BINDING=============");
  }

}
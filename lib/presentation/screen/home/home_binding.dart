
import 'package:flutter/material.dart';
import 'package:flutter_web/domain/controller/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    debugPrint("BINDING=============");
  }

}
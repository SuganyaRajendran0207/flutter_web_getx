
import 'package:flutter/material.dart';
import 'package:flutter_web/domain/controller/home/pages/service_controller.dart';
import 'package:get/get.dart';

class ServiceBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => ServiceController());
    debugPrint("BINDING=============");
  }

}
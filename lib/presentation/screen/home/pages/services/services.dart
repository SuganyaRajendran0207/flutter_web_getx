import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/lang/language_constant.dart';
import 'package:get/get.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Text(
            LanguageConstant.serviceTitle.tr,
            style: const TextStyle(fontSize: 22, color: Colors.blueGrey),
          ),
          Text(
            LanguageConstant.serviceContent.tr,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
}

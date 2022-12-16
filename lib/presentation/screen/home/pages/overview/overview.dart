import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/lang/language_constant.dart';
import 'package:get/get.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Text(
            LanguageConstant.homeTitle.tr,
            style: const TextStyle(fontSize: 22, color: Colors.blueGrey),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            LanguageConstant.homeContent.tr,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            LanguageConstant.homeMission.tr,
            style: const TextStyle(fontSize: 22, color: Colors.blueGrey),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            LanguageConstant.homeMissionContent.tr,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            LanguageConstant.homeCompetitive.tr,
            style: const TextStyle(fontSize: 22, color: Colors.blueGrey),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '* ${LanguageConstant.homeCompetitiveContentOne.tr}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            '* ${LanguageConstant.homeCompetitiveContentTwo.tr}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            '* ${LanguageConstant.homeCompetitiveContentThree.tr}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

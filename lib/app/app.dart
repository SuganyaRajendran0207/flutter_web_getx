import 'package:flutter/material.dart';
import 'package:flutter_web/core/const/app_constants.dart';
import 'package:flutter_web/core/routes/app_pages.dart';
import 'package:flutter_web/core/utils/lang/translation_service.dart';
import 'package:flutter_web/presentation/theme/colors.dart';
import 'package:get/get.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  HomeAppState createState() => HomeAppState();
}

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "navigator");

class HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'OClock Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: primaryWhite,
        scaffoldBackgroundColor: primaryWhite,
        fontFamily: AppConstants.fontOpenSans,
        //fontFamily: 'Roboto',
        hintColor: regularGrey,
        iconTheme: const IconThemeData(
          color: regularGrey,
          size: 24,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          // ignore: deprecated_member_use
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
          backgroundColor: primaryWhite,
          foregroundColor: titleBlack,
          centerTitle: true,
        ),
      ),
      getPages: AppPages.routes,
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}

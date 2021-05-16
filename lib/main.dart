import 'package:flutter/material.dart';
import 'package:flutter_application_getx/bindings/homebinding.dart';
import 'package:flutter_application_getx/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      defaultTransition: Transition.fade,
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    ),
  );
}

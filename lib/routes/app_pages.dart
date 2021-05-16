import 'package:flutter_application_getx/UI/Secund_page.dart';
import 'package:flutter_application_getx/UI/home.dart';
import 'package:flutter_application_getx/bindings/Secundbinding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SECUND,
      page: () => SecundPage(),
      binding: SecundBinding(),
    )
  ];
}

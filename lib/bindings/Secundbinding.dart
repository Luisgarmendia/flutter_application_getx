import 'package:flutter_application_getx/controller/secundcontroller.dart';
import 'package:get/get.dart';

class SecundBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SecundController>(() => SecundController());
  }
}


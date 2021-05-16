import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controller/homeController.dart';
import 'package:flutter_application_getx/routes/app_pages.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('HomePage')),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: _.animation,
                child: Center(
                  child: Obx(
                    () => Text(
                      '${_.numero.value}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                builder: (BuildContext context, Widget child) {
                  return Transform.scale(
                    scale: _.animation.value,
                    child: child,
                  );
                },
              ),
              GestureDetector(
                onTap: () => Get.toNamed(
                  Routes.SECUND,
                ),
                child: Container(
                  height: 40,
                  width: 120,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    "Otra Pag",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "1",
              onPressed: () {
                _.restar();
              },
              child: Text('-'),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: "2",
              onPressed: () {
                _.sumar();
              },
              child: Text('+'),
            ),
          ],
        ),
      );
    });
  }
}

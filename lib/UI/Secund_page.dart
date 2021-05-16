import 'package:flutter/material.dart';
import 'package:flutter_application_getx/controller/secundcontroller.dart';
import 'package:get/get.dart';

class SecundPage extends GetView<SecundController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecundController>(builder: (_) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          heroTag: "1",
          onPressed: () {
            _.animated();
          },
          child: Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Obx(() {
                if (!_.loading.value) return CircularProgressIndicator();
                return Container(
                  child: AnimatedBuilder(
                    animation: _.animation,
                    child: Text("ya carge"),
                    builder: (BuildContext context, Widget child) {
                      return Transform.rotate(
                          angle: _.animation.value, child: child);
                    },
                  ),
                );
              }),
            )
          ],
        ),
      );
    });
  }
}

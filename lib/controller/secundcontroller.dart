import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SecundController extends GetxController
    with SingleGetTickerProviderMixin {
  RxBool loading = false.obs;
  AnimationController _animationController;
  Animation animation;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("hola aqui toy");

    _animationController = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    animation = Tween(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(curve: Curves.easeInCubic, parent: _animationController),
    );
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("Ya me Renderice");
    Timer(Duration(seconds: 3), () async {
      this.loading.value = true;
      await _animationController.forward();
      await _animationController.reverse();
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _animationController.dispose();
  }

  animated() async {
    await _animationController.forward();
    await _animationController.reverse();
  }
}

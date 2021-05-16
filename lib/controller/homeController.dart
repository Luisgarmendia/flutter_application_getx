import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends FullLifeCycleController
    with FullLifeCycle, SingleGetTickerProviderMixin {
  Animation animation;
  AnimationController _animationController;

  RxInt numero = 0.obs;
  final _obj = ''.obs;

  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;

  sumar() async {
    this.numero.value++;
    await _animationController.reverse();
    await _animationController.forward();
  }

  restar() async {
    this.numero.value--;
    await _animationController.reverse();
    await _animationController.forward();
  }

  @override
  void onInit() {
    super.onInit();
    _animationController = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(curve: Curves.decelerate, parent: _animationController),
    );
  }

  @override
  void onReady() {
    // TODO:  implement onReady
    super.onReady();
    _animationController.forward();
  }

  @override
  void onDetached() {
    print('HomeController - onDetached called');
  }

  // Mandatory
  @override
  void onInactive() {
    print('HomeController - onInative called');
  }

  // Mandatory
  @override
  void onPaused() {
    print('HomeController - onPaused called');
  }

  // Mandatory
  @override
  void onResumed() {
    print('HomeController - onResumed called');
  }
  
}

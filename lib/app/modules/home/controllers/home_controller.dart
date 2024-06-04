import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleTickerProviderStateMixin {
  final count = 0.obs;
  late AnimationController animationCon;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    animationInt();
  }

  void animationInt() {
    animationCon = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this, // Corrected 'this' part
    );
    animation = CurvedAnimation(
      parent: animationCon,
      curve: Curves.easeOut,
    );

    animation.addListener(() {
      update();
    });

    animationCon.forward();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationCon.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}

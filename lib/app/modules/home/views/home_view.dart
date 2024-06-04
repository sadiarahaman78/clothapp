import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Image.asset(
              'image/pic1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Obx(
                () => Visibility(
              visible: Get.find<HomeController>().isVisible.value,
              child: Container(
                color: Colors.black.withOpacity(0.5), // Adjust color/opacity
              ),
            ),
          ),
        ],
      ),
    );
  }
}

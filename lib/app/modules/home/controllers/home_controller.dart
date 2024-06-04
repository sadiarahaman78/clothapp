
import 'dart:async';

import 'package:get/get.dart';

import '../../login/views/login_view.dart';

class HomeController extends GetxController {
  final isVisible=true.obs;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 10), () => Get.offAll(const LoginView()));

  }



  @override
  void onClose() {
    super.onClose();
    isVisible.value = false;
  }

  void increment() => count.value++;
}

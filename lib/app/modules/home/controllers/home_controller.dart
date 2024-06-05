import 'dart:async';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final isVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 10), () => Get.offNamed(Routes.LOGIN));
  }

  @override
  void onClose() {
    super.onClose();
    isVisible.value = false;
  }
}

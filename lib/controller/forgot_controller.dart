import 'package:get/get.dart';

class ForgotController extends GetxController {


  RxBool _isPasswordVisible = true.obs;

  RxBool get isPasswordVisible => _isPasswordVisible;

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }
}
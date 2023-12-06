import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:task/model/forgot_password_model.dart';

class ForgotController extends GetxController {


  RxBool _isPasswordVisible = true.obs;

  RxBool get isPasswordVisible => _isPasswordVisible;

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }


  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addPasswordModel(String oldpassword,
      String newpassword,
      String reenterpassword,
      ) async {
    try {
      ForgotModel forgotModel = ForgotModel(
        oldpassword: oldpassword,
        newpassword: newpassword,
        reenterpassword: reenterpassword,


      );

      await firebaseFirestore.collection('users').add(forgotModel.toMap());
    } catch (e) {
      Get.snackbar('Error', "$e");
    }
  }
}




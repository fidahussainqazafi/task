import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';
class SignUpController extends GetxController {

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addUserData(String username,
      String lastname,
      String email,
      String phone,) async {
    try {
      UserModel userModel = UserModel(
        username: username,
        lastname: lastname,
        email: email,
        phone: phone,

      );

      await firebaseFirestore.collection('users').add(userModel.toMap());
    } catch (e) {
      Get.snackbar('Error', "$e");
    }
  }
}

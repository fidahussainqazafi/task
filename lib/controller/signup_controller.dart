import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import '../model/user_model.dart';
class SignUpController extends GetxController {

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addUserData(String username,
      String lastname,
      String email,
      String phone,
      File? profileImage,
      )

  async {
    try {
      String imageUrl = await uploadImageToStorage(profileImage);
      UserModel userModel = UserModel(
        username: username,
        lastname: lastname,
        email: email,
        phone: phone,
        profileImageUrl : imageUrl,

      );

      await firebaseFirestore.collection('users').add(userModel.toMap());
    } catch (e) {
      Get.snackbar('Error', "$e");
    }
  }

  Future<String> uploadImageToStorage(File? pickedImage) async {
    try {
      if (pickedImage != null) {
        Reference storageReference = FirebaseStorage.instance.ref().child('profile_images/' + DateTime.now().toString());
        await storageReference.putFile(pickedImage);
        String downloadURL = await storageReference.getDownloadURL();
        return downloadURL;
      } else {
        // Return a default image URL or handle accordingly
        return 'default_image_url';
      }
    } catch (e) {
      print('Error uploading image: $e');
      throw e;
    }
  }

}

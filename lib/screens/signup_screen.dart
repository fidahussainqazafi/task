import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task/screens/forgot_screen.dart';
import 'package:task/widgets/btn_widget.dart';
import 'package:task/widgets/form_container.dart';
import 'dart:io';

import 'package:task/widgets/row_widget.dart';

import '../controller/signup_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController signUpController = Get.put(SignUpController());
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  late File? _pickedImage = null;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _pickedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                RowWidget(
                  onpreesed: () {},
                  txt: 'Profile info',
                ),
                SizedBox(height: 10.h),
          
               Row(
                 children: [
                   _pickedImage != null
                       ? ClipOval(
                         child: Image.file(
                                            _pickedImage!,
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.cover,
                                          ),
                       )
                       : Container(),
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 10),
                     child: Column(
                       children: [
                         Text('Update your Picture',style: TextStyle(color: Colors.black,
                             fontWeight: FontWeight.bold,fontSize: 20),),
                         Text('uploaded a photo under 2 MB'),
          
                         Row(
                           children: [
                             ElevatedButton(
                               onPressed: _pickImage,
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.lightBlueAccent,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                               ),
                               child: Row(
                                 children: [
                                   Icon(Icons.account_tree_outlined),
                                   const Text('Upload'),
                                 ],
                               ),
                             ),
                             SizedBox(width: 5.w,),
                             Text('Delete current picture',style: TextStyle(color: Colors.red,
                                 fontWeight: FontWeight.bold,fontSize: 10)),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
                SizedBox(height: 20.h,),
                Text('First Name',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 5.h,),
                FormContainerWidget(
                  controller: firstNameController,

                    hintText: ''),
                Text('Last Name',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 10.h,),
                FormContainerWidget(
                  controller: lastNameController,
                    hintText: ''),
                Text('Email',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 10.h,),
                FormContainerWidget(
                  controller: phoneController,
                    hintText: ''),
                Text('Phone Number',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 10.h,),
                FormContainerWidget(
                  controller: emailController,
                    hintText: ''),

                SizedBox(height: 50.h,),
                Login_Widget(
                    text: 'Change your password',
                    onPressed: (){
                      signUpController.addUserData(
                        firstNameController.text,
                        lastNameController.text,
                        emailController.text,
                        phoneController.text,
                      );

                      Get.to(()=>ForgotScreen());
                    },
                ),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}

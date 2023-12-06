import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:task/controller/forgot_controller.dart';
import 'package:task/screens/signup_screen.dart';
import 'package:task/widgets/row_widget.dart';

class ForgotScreen extends StatelessWidget {
  final ForgotController forgotController = Get.put(ForgotController());

  final TextEditingController oldpasswordController = TextEditingController();

  final TextEditingController newpasswordController = TextEditingController();

  final TextEditingController reenterpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              RowWidget(
                ontap: (){
                  Get.to((SignUpScreen));
                },
                txt: 'change password',
                onpreesed: () {
                  forgotController.addPasswordModel(
                    oldpasswordController.text.trim(),
                    newpasswordController.text.trim(),
                    reenterpasswordController.text.trim(),
                  );
                },
              ),
              SizedBox(height: 50.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Old Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  Text('Forgot Password', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20.h),

              Obx(() => buildTextFormField(
                controller: oldpasswordController,
                isVisible: forgotController.isPasswordVisible,
                onToggle: () => forgotController.togglePasswordVisibility(),
                hintText: '*********',
              )),
              SizedBox(height: 10.h),
              const Text('New password'),
              Obx(() => buildTextFormField(
                controller: newpasswordController,
                isVisible: forgotController.isPasswordVisible,
                onToggle: () => forgotController.togglePasswordVisibility(),
                hintText: '*********',
              )),
              SizedBox(height: 10.h),
              const Text('Re_enter New password'),
              Obx(() => buildTextFormField(
                controller: reenterpasswordController,
                isVisible: forgotController.isPasswordVisible,
                onToggle: () => forgotController.togglePasswordVisibility(),
                hintText: '*********',
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField({
    required TextEditingController controller,
    required RxBool isVisible,
    required VoidCallback onToggle,
    required String hintText,
  }) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isVisible.value,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              isVisible.value ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: onToggle,
          ),
          hintText: hintText,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Enter your password';
          } else {
            return null;
          }
        },
      ),





    );
  }
}

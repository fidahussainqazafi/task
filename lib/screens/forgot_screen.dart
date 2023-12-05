import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/forgot_controller.dart';
import 'package:task/widgets/row_widget.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final TextEditingController oldpasswordController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();
  final TextEditingController reenterpasswordController = TextEditingController();
  final ForgotController oldPasswordController = Get.put(ForgotController());
  final ForgotController newPasswordController = Get.put(ForgotController());
  final ForgotController reenterPasswordController = Get.put(ForgotController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              RowWidget(txt: 'change password', onpreesed: (){

              }
              ),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Old Password',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text('Forgot Password',style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),


              Obx(() => Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.withOpacity(.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child : TextFormField(
                  controller: oldpasswordController,
                  obscureText: oldPasswordController.isPasswordVisible.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    suffixIcon: IconButton(
                      icon: Icon(
                        oldPasswordController.isPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        oldPasswordController.togglePasswordVisibility();
                      },
                    ),

                    hintText: '*********',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else {
                      return null;
                    }
                  },
                ),
              )),
              SizedBox(height: 10,),
              Text('New password'),
              Obx(() => Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child : TextFormField(
                  controller: newpasswordController,
                  obscureText: newPasswordController.isPasswordVisible.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    suffixIcon: IconButton(
                      icon: Icon(
                        newPasswordController.isPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        newPasswordController.togglePasswordVisibility();
                      },
                    ),

                    hintText: '*********',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else {
                      return null;
                    }
                  },
                ),
              )),
              SizedBox(height: 10,),
              Text('Re_enter New password'),
              Obx(() => Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child : TextFormField(
                  controller: reenterpasswordController,
                  obscureText: reenterPasswordController.isPasswordVisible.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,

                    suffixIcon: IconButton(
                      icon: Icon(
                        reenterPasswordController.isPasswordVisible.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        reenterPasswordController.togglePasswordVisibility();
                      },
                    ),

                    hintText: '*********',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    } else {
                      return null;
                    }
                  },
                ),
              )),


              ],
          ),
        ),
      ),
    );
  }
}

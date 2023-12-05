import 'package:flutter/material.dart';
class Login_Widget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;


  const Login_Widget({Key? key,required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )

        ),
        child: Center(child: Text(text,style: TextStyle(color: Colors.white,
            fontSize: 20,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}

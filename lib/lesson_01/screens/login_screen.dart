

import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/constants/colors.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/elevated_button_widget.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_button_widget.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: tealAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 70,
              backgroundColor: indigo,
            ),
            const SizedBox(
              height: 70,
            ),
            textFieldWidget('Email', Icons.email, null, false),
            const SizedBox(height: 30,),
            textFieldWidget('Password', Icons.lock, Icons.visibility_sharp, true),
            const SizedBox(height: 30,),
            elevatedButtonWidget('Login'),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textButtonWidget('Sign up'),
                textButtonWidget('Forgot password?')
              ],
            )
          ],
        ),
      ),
    );
  }
}

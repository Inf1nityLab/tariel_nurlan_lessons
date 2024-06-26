import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/constants/colors.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_button_widget.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_field_widget.dart';
import 'package:tar_nur_lessons/lesson_02/screens/main_screen_02.dart';
import 'package:tar_nur_lessons/lesson_02/service.dart';

import '../widgets/elevated_button_widget_02.dart';

class LoginScreen02 extends StatelessWidget {
  const LoginScreen02({super.key});

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
            elevatedButtonWidget('Login', (){
              navigation(context, const MainScreen02(),);
            }),
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

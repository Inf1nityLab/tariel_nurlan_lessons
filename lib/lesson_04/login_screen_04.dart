

import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/constants/colors.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_button_widget.dart';
import 'package:tar_nur_lessons/lesson_02/screens/main_screen_02.dart';
import 'package:tar_nur_lessons/lesson_02/service.dart';


import '../lesson_02/widgets/elevated_button_widget_02.dart';
import '../lesson_02/widgets/text_field_widget_02.dart';





class LoginScreen04 extends StatefulWidget {
  const LoginScreen04({super.key});

  @override
  State<LoginScreen04> createState() => _LoginScreen04State();
}

class _LoginScreen04State extends State<LoginScreen04> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = 'bai';
  String password = '12345';
  void login(){
    if (emailController.text == email && passwordController.text == password){
      navigation(context, const MainScreen02());
    } else if(emailController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email не может быть пустым')),
      );
    } else if(passwordController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password не может быть пустым')),
      );
    } else if(passwordController.text != password){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Пароль не правильный')),
      );
    } else if(emailController.text != email){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('email не правильный')),
      );
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email и парольне может быть пустым')),
      );
    }
  }

  bool eyes = false;

  void change() {
    setState(() {
      eyes = !eyes;
    });
  }
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
            textFieldWidget('Email', Icons.email, null, false, emailController),
            const SizedBox(height: 30,),
            textFieldWidget('Password', Icons.lock, Icons.visibility_sharp, eyes, passwordController),
            const SizedBox(height: 30,),
            elevatedButtonWidget('Login', (){
              login();
              change();
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
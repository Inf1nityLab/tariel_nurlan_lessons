import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_02/screens/detail_screen_02.dart';
import 'package:tar_nur_lessons/lesson_02/service.dart';
import 'package:tar_nur_lessons/lesson_02/widgets/icon_button_widget.dart';
import '../constants/colors.dart';
import '../widgets/containerWidget.dart';

class MainScreen02 extends StatelessWidget {
  const MainScreen02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealAccent,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            bigContainer(context),
            const SizedBox(
              height: 25,
            ),
            row(),
            const SizedBox(
              height: 30,
            ),
            containerWidget(Icons.arrow_upward_outlined, 'Sent',
                'jskhdfkjhdsfkjhds', '150'),
            const SizedBox(
              height: 15,
            ),
            containerWidget(
                Icons.arrow_downward, 'Receive', 'sdhfkjdshfkjdsh', '250'),
            const SizedBox(
              height: 15,
            ),
            containerWidget(
                Icons.attach_money, 'Loan', 'skdhfkjsdhkjfs', '400'),
          ],
        ),
      ),
    );
  }

  Widget bigContainer(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(30)),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconButtonWidget(Icons.menu, () {}),
              iconButtonWidget(Icons.more_vert, () {navigation(context, DetailScreen03());}),
            ],
          ),
          const CircleAvatar(
            radius: 70,
            backgroundImage: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Hiar Riaz',
            style:  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: indigo),
          ),

          const Text(
            'Ux/Ui designer',
            style:  TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: black),
          ),
          const SizedBox(
            height: 15,
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              columnWidget('8900', 'Income'),
              columnWidget('5500', 'Expenses'),
              columnWidget(
                '890', 'Loan'
              )
            ],
          )
        ],
      ),
    );
  }

  Widget row() {
    return Row(
      children: [
        const Text(
          'Overview',
          style: TextStyle(
              fontSize: 20, color: indigo, fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.notifications_none_sharp,
          size: 20,
          color: Colors.black,
        ),
        Expanded(child: Container()),
        const Text(
          'Sep 13, 2020',
          style: TextStyle(
              fontSize: 15, color: indigo, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget columnWidget(String textOne, String textTwo){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textOne,
          style:  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: indigo),
        ),
        Text(
          textTwo,
          style:  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: black),
        ),
      ],
    );
  }
}

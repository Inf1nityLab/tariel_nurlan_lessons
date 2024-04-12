import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_01/widgets/text_button_widget.dart';
import 'package:tar_nur_lessons/lesson_02/constants/colors.dart';
import 'package:tar_nur_lessons/lesson_02/widgets/containerWidget.dart';
import 'package:tar_nur_lessons/lesson_02/widgets/icon_button_widget.dart';

import '../widgets/elevated_button_widget_02.dart';

class DetailScreen03 extends StatelessWidget {
  const DetailScreen03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tealAccent,
      appBar: AppBar(
        backgroundColor: tealAccent,
        leading: iconButtonWidget(Icons.arrow_back_ios, () {
          Navigator.pop(context);
        }),
        actions: [
          iconButtonWidget(Icons.search, () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent Transaction',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: indigo),
                ),
                textButtonWidget('see all')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                _elevatedButtonWidget('All', white, indigo),
                const SizedBox(
                  width: 10,
                ),
                _elevatedButtonWidget('Income', grey, white),
                const SizedBox(
                  width: 10,
                ),
                _elevatedButtonWidget('Expense', grey, white),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Today',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: indigo),
            ),
            const SizedBox(
              height: 20,
            ),
            containerWidget(
                Icons.email, 'Payment', 'Payment from Andrea', '30.00'),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            elevatedButtonWidget('see details', (){})
          ],
        ),
      ),
    );
  }

  Widget _elevatedButtonWidget(
      String text, Color colorText, Color colorButton) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: colorButton),
      child: Text(
        text,
        style: TextStyle(
            color: colorText, fontWeight: FontWeight.w700, fontSize: 15),
      ),
    );
  }
}

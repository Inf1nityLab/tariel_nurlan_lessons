import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_02/constants/colors.dart';


Widget containerWidget(IconData iconData, String textOne, String textTwo, String textThree) {
  return Container(
    height: 100,
    width: double.infinity,
    decoration:
        BoxDecoration(color: white, borderRadius: BorderRadius.circular(30)),
    child: Center(
      child: ListTile(
        leading: Container(
          height: 70,
          width: 50,
          decoration: BoxDecoration(
              color: tealAccent, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Icon(
              iconData,
              size: 30,
            ),
          ),
        ),
        title:  Text(
          textOne,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
        subtitle: Text(
          textTwo,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: grey),
        ),
        trailing: Text(
          textThree,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: black),
        ),
      ),
    ),
  );
}

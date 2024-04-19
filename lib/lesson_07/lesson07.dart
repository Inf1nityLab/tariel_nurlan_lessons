import 'package:flutter/material.dart';

class Person{
  final String name;
  final int age;
  final String surname;
  final String nation;

  Person({required this.name, required this.age, required this.surname, required this.nation});
}

Person nurlan = Person(name: 'Nurlan', age: 45, surname: '', nation: 'nation');
Person baias = Person(name: 'Baias', age: 24, surname: '', nation: 'nation');


class ContainerOne{
  final AlignmentGeometry? alignmentGeometry;
  final double? width;
  final double? height;
  final Color? color;

  ContainerOne({this.alignmentGeometry, this.width, this.height, this.color});
}

ContainerOne one = ContainerOne();


class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: ElevatedButton(onPressed: (){}, child: Text('')),
      ),
    );
  }
}

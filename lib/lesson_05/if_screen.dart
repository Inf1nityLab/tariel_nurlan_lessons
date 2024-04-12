import 'package:flutter/material.dart';

class IfScreen extends StatefulWidget {
  const IfScreen({super.key});

  @override
  State<IfScreen> createState() => _IfScreenState();
}

class _IfScreenState extends State<IfScreen> {


  TextEditingController moneyController = TextEditingController();
  final int money = 1000;

  final int car = 500000;

  // ==, !=, >, <, >=, <=
  // && - и
  // || - или

  void buyCar(){
    if (9 >= 10){
      print('Мы покупаем машину');
    } else{
      print('Мы не покупаем машину');
    }
  }

  void equal(){
    if (int.parse(moneyController.text) == money){
      print('Они равны');
    } else if(int.parse(moneyController.text) > money){
      print('Деньги котрый я написал больше');
    } else if(int.parse(moneyController.text) < money){
      print('Деньги котрый я написал меньше');
    }
  }

  int time = 8;
  bool rain = true;
  void run(){
    if (time == 7 && rain == false){
      print('Пойду на пробежку');
    } else if (time == 8 || rain == false){
      print('Пойду на пробежку в 8');
    }
  }

  void check(){
    if (true ) {
      print('На улице идет дождь');
    } else {
      print('На не улице идет дождь');
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${money} som'),
            Text(''),
            ElevatedButton(onPressed: (){buyCar();}, child: const Text('Машина')),
            ElevatedButton(onPressed: (){
              check();
            }, child: const Text('Rain')),
            TextField(
              controller: moneyController,
            ),
            ElevatedButton(onPressed: (){equal();}, child: Text('Equal')),
            ElevatedButton(onPressed: (){run();}, child: Text('Run'))
          ],
        )
    );
  }
}


import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  String name = 'Baias';
  TextEditingController nameController = TextEditingController();
  int age = 24;
  double weight = 65.89;
  bool isSun = true;
  Icon icon = const Icon(Icons.add);


  var book = 'Jamilya';
  dynamic tv = 34;

  List<String> names = ['Bais', 'Nur','Cholpon'];
  List<Widget> children = [Icon(Icons.ac_unit_rounded), Text('Hello')];

  void run(){}
  void check(){}

  Widget iconWidget(){
    return Icon(Icons.add_chart);
  }

  String nameFunc(){
    return 'Hello';
  }

  // == равны
  // != не равны
  // >
  // <
  // >=
  // <=
  // && - и
  // || или

  int number(int a, int b){
    if(a == b){
      print('$a == $b');
    } else if(a != b){
      print('$a != $b');
    } else{
      print('I do not know');
    }
    return a + b;
  }

//CRUD - create - read - update - delete

  Map<String, String> person= {
    'name': 'Baiastan',
    'surname': 'Aitmatove',
    'age': '24',

  };


  void printPerson(){
    print(person);
    person['job'] = 'Programmer';
    print(person);
    person['age'] = '25';
    print(person);
    person.remove('name');
    print(person);
    print(person.keys.toList());
    print(person.values.toList());
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              printPerson();
            }, child:const  Text('map')),
          ),
          Container(
            height: 200,
            child: Column(
              children: [
                Text('${person['name']}'),
                Text('${person['surname']}'),
                Text('${person['age']}'),
                Text('${person['job']}'),

              ],
            ),
          )
        ],
      )
    );
  }
}

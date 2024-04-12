

import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.builder(itemCount: 6,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20
      ), itemBuilder: (context, index){
        return Container(
          color: Colors.cyanAccent,
          height: 40,
          width: 40,
          child: Center(
            child: Text('$index'),
          ),
        );
      }),
    );
  }
}




import 'package:flutter/material.dart';

class InstagramPostScreen extends StatefulWidget {
  const InstagramPostScreen({super.key});

  @override
  State<InstagramPostScreen> createState() => _InstagramPostScreenState();
}

class _InstagramPostScreenState extends State<InstagramPostScreen> {

  List<Map<String, dynamic>> insData = [
    {
      'imageAvatar': 'assets/img/a-p1.jpg',
      'name':'Baias',
      'date': 'Aprel 12',
      'bigImage': 'assets/img/audi.jpg',
      'isLike': false,
      'like': '125k Likes',
      'comments': 'asdasdsadsadas',
      'see': 'see all 200 comments'

    },
    {
      'imageAvatar': 'assets/img/a-p2.jpg',
      'name':'Nurlan',
      'date': 'January 15',
      'bigImage': 'assets/img/bmw.jpg',
      'isLike': false,
      'like': '225k Likes',
      'comments': 'asdasdsadsadas',
      'see': 'see all 1000 comments'

    },

    {
      'imageAvatar': 'assets/img/a-p2.jpg',
      'name':'Nurlan',
      'date': 'January 15',
      'bigImage': 'assets/img/bmw.jpg',
      'isLike': false,
      'like': '225k Likes',
      'comments': 'asdasdsadsadas',
      'see': 'see all 1000 comments'

    },

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(itemCount: insData.length,itemBuilder: (context, index){

        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(insData[index]['imageAvatar']),
                  ),
                  const SizedBox(width: 5,),
                   Text(insData[index]['name']),
                  Expanded(child: Container()),
                   Text(insData[index]['date']),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                height: 180,
                decoration:  BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage(insData[index]['bigImage']),
                  )
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  iconButton(Icons.favorite, Colors.red),
                  iconButton(Icons.chat, Colors.grey),
                  iconButton(Icons.double_arrow, Colors.grey),
                  Expanded(child: Container()),
                  iconButton(Icons.bookmark, Colors.black),
                ],
              ),
              Text(insData[index]['like']),
              Text(insData[index]['comments']),
              Text(insData[index]['see'])
            ],
          ),
        );
      }),
    );
  }


  Widget iconButton(IconData iconData, Color color){
    return IconButton(onPressed: (){}, icon: Icon(iconData, color: color,size: 30,));
  }
}

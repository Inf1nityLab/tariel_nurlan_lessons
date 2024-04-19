import 'package:flutter/material.dart';
import 'package:tar_nur_lessons/lesson_07/tik_tok_model.dart';


class TikTokScreen extends StatefulWidget {
  const TikTokScreen({super.key});

  @override
  State<TikTokScreen> createState() => _TikTokScreenState();
}

class _TikTokScreenState extends State<TikTokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(data[index].bigImage))),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                       CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(data[index].profileImage),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            data[index].like = !data[index].like;
                          });
                        },
                        icon:  Icon(
                          Icons.favorite,
                          color: data[index].like ? Colors.red : Colors.white,
                          size: 30,
                        )  ,
                      ),
                       Text('${data[index].countLike}', style: TextStyle(fontSize: 20, color: Colors.white),),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                       Text('${data[index].countComment}', style: TextStyle(fontSize: 20, color: Colors.white),),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Text('share', style: TextStyle(fontSize: 20, color: Colors.white),),
                      const SizedBox(height: 70,)
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}

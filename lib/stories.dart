import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  StoriesWidget({Key? key}) : super(key: key);

  //List of Stories
  final List storiesList = [
    {
      "story_user": "Leo",
      "story_image": "assets/images/profils/profil_1.png"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_2.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_3.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_4.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_5.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_1.png"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_2.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_3.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_4.jpeg"
    },
    {
      "story_user": "Leo Messi",
      "story_image": "assets/images/profils/profil_5.jpeg"
    },
  ];

  final String strory_circle = "assets/images/story_circle.png";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storiesList.map((item) {
         return Container(
           height: 120,
           width: 65,
           //color: Colors.blueGrey,
           margin: const EdgeInsets.symmetric(horizontal: 9),
           child: Column(
             children: [
               Stack(
                 alignment: Alignment.center,
                 children: [
                   Image.asset(
                     'assets/images/story_circle.png',
                     height: 100,
                   ),
                   Image.asset(
                     'assets/images/story_circle.png',
                     height: 98,
                   ),
                   CircleAvatar(
                     radius: 30,
                     backgroundImage: AssetImage(item['story_image']),
                   ),
                 ],
               ),
               //const SizedBox(height: 1,),
               Text(
                 item['story_user'],
                 maxLines: 1,
                 style: const TextStyle(
                     fontSize: 12,
                 ),
               ),
             ],
           ),
         );
        }).toList(),
      ),
    );
  }
}
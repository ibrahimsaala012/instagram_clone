import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  StoriesWidget({Key? key}) : super(key: key);

  //List of Stories
  final List storiesList = [
    {"story_user": "Leo", "story_image": "assets/images/profils/profil_1.png"},
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
    }
  ];

  final String strory_circle = "assets/images/story_circle.png";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Center(
            child: Column(
              //height: 70,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                      backgroundColor: Colors.transparent,
                    ),
                    Positioned(
                        right: 3,
                        bottom: 2,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 60, bottom: 30.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                const Text(
                  "Votre story",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ]
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: storiesList.map((item) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                    //height: 120,
                    //width: 65,
                    //color: Colors.blueGrey,
                    // margin: const EdgeInsets.symmetric(horizontal: 9),
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                'assets/images/story_circle.png',
                                height: 72,
                              ),
                              Image.asset(
                                'assets/images/story_circle.png',
                                height: 70,
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
                    ]),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

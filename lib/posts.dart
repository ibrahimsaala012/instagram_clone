import 'package:flutter/material.dart';

class PostsWidget extends StatelessWidget {
  PostsWidget({Key? key}) : super(key: key);

  final List postsList = [
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_3.jpeg",
      "image" : "assets/images/photos/post_3.jpeg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_4.jpeg",
      "image" : "assets/images/photos/post_4.jpg",
      "content" : "Just a test"
    },
    {
      "name": "Leo Messi",
      "profil_image" : "assets/images/profils/profil_5.jpeg",
      "image" : "assets/images/photos/post_5.jpeg",
      "content" : "Just a test"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: postsList.map(
              (item) {
                return Column(
                  children: [
                    Container(
                      height: 70,
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(item['profil_image']),
                          ),
                          const SizedBox(width: 10,),
                          Text(
                              item['name'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                          ),
                          Image.asset(
                            "assets/images/badge_insta.png",
                            height: 15,
                          ),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.more_horiz)
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item['image']),
                            fit: BoxFit.cover
                          ),
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.favorite_outline, size: 23,)
                          ),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.messenger_outline, size: 23,)
                          ),
                          IconButton(
                                onPressed: () {}, icon: const Icon(Icons.send_outlined, size: 23,)
                            ),
                          Expanded(child: Container()),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.bookmark_outline, size: 23,)
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        children: const [
                          Text(
                              " 49 255 J'aime",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        children:  [
                          Text(
                            " "+item['name']+" ",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            item['content']+" ",
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        children: const [
                          Text(
                            " Voir les 200 commentaires ",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 20,
                      child: Row(
                        children: const [
                          Text(
                            " Il y a 6 heures  ",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
    );
  }
}
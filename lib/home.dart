import 'package:flutter/material.dart';
import 'package:instagram_clone/posts.dart';
import 'package:instagram_clone/stories.dart';

class HomeWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Image.asset("assets/images/logo_insta.png", height: 65),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
                Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
                Icons.maps_ugc_sharp),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StoriesWidget(),
            PostsWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade800,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: 'notif'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'profil'),
        ],),
    );
  }

}
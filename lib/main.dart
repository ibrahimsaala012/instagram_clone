import 'package:flutter/material.dart';
import 'package:instagram_clone/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: SplashWidget()
    );
  }
}
import 'package:flutter/material.dart';

import 'home.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState(){
    super.initState();
    navigateToHome();
  }

  navigateToHome()async{
    await Future.delayed(const Duration(milliseconds: 1000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeWidget()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/insta.png',
                width: 100,
                //color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
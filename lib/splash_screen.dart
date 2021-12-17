import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop/screens/home.dart';
import 'package:shop/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds:5),
            (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home())) ;
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: lightblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: _height * 0.4,
            ),
            SizedBox(height:_height * 0.2 ,),
            SpinKitThreeBounce(color: blue ,size: _height * 0.07,),


          ],
        ),
      ),
    );
  }
}

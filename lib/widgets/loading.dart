import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Shimmer.fromColors(
              baseColor: Color(0xFF54C5E6),
              highlightColor: const Color(0xFFFF8C00),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"
                ),
              ),
            ),
            Text("Please wait...",style: TextStyle(fontFamily: "Poppins"),)
          ],
        ),
      ),
    );
  }
}

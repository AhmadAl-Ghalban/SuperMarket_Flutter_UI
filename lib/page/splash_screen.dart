import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'package:ghaith/homepage.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  Future<bool> _startpage() async {
    await Future.delayed(Duration(seconds: 4), () {});
    return true;
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:60.0),
            child: Opacity(opacity: 0.6, child: Image.asset('images/splashsuper1.jpg' , fit: BoxFit.cover, height: 400,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0,),
            child: Shimmer.fromColors(
                child: Container(
                  padding: EdgeInsets.only(top: 160.0),
                  child: Text(
                    "SuperMarket",
                    style: TextStyle(fontSize: 30.0, shadows: <Shadow>[
                      Shadow(
                        blurRadius: 18.0,
                        color: Colors.black,
                        offset: Offset.fromDirection(120, 12),
                      )
                    ]),
                  ),
                ),
                baseColor: Colors.black45,
                highlightColor: Colors.tealAccent),
          )
        ],
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    _startpage().then((value) => _navigateToLogin());
    
  }
}

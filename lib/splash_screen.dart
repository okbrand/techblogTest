import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblogtest/main.dart';
import 'package:techblogtest/my_colors.dart';

import 'gen/assets.gen.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    Future.delayed(Duration(seconds: 2)).then((value) =>
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
  MainScreen()
  ))
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.logo.path,
            height: 64,
          ),
          SizedBox(height: 50,),
          SpinKitFoldingCube(
            color: SolidColors.primeryColor,
            size: 40.0,
          )
        ],
      ),
    );
  }
}

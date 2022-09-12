import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../gen/assets.gen.dart';
import 'my_colors.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.5,
      indent: size.width / 6,
      endIndent: size.width / 6,
      color: SolidColors.dividerColor,
    );
  }
}

class WidgetLIstHashTag extends StatelessWidget {
  const WidgetLIstHashTag({
    Key? key,
    required this.size,
    required this.index,
    required this.textTheme,
    required this.myList,
    required this.myGradiantColors,
    required this.colorTextAndIcon,
  }) : super(key: key);
  final Size size;
  final int index;
  final TextTheme textTheme;
  final List myList;
  final List<Color> myGradiantColors;
  final Color colorTextAndIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 20,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: myGradiantColors,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          SizedBox(
            width: size.width / 30,
          ),
          ImageIcon(
            AssetImage(Assets.icons.hashtagicon.path),
            color: colorTextAndIcon,
            size: 17,
          ),
          SizedBox(
            width: size.width / 30,
          ),
          Text(
            myList[index].title.toString(),
            style: textTheme.headline1,
          ),
          SizedBox(
            width: size.width / 30,
          ),
        ],
      ),
    );
  }
}

myLauncherUrl(String url ) async{
  var myUri= Uri.parse(url);
  if (await canLaunchUrl(myUri) ){

    await launchUrl(myUri);

  }
  else{

    log("this uri:  ${myUri.toString()} is not URL");
  }
}
class MySpinKit extends StatelessWidget {
  const MySpinKit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCube(color: SolidColors.primeryColor,size: 50,);
  }
}
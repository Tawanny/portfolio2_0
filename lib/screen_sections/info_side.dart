import 'package:flutter/material.dart';
import '../tabs/about_me/about_me.dart';

class InfoSide extends StatelessWidget {
  const InfoSide({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return SingleChildScrollView(
      controller: ScrollController(),
      child: const AboutMe(),
    );
  }
}


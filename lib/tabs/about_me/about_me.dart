import 'package:flutter/material.dart';
import 'package:portfolio2_0/components/contact_me_button.dart';

import '../../helpers/constants.dart';
import '../../helpers/theme_colors.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({
    Key? key,

  }) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with SingleTickerProviderStateMixin{
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController!.forward();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About Me',
              style: txtTheme.headline4!.copyWith(
                color: grey,
              ),
            ),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: _animationController!,
              child: Text(
                '$myBio \n\n $myBio2',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(
                  color: Colors.white,

                  height: 2,
                ),
              ),
            ),
            const SizedBox(height: 130),
            Text(
              'So what are you waiting for?',
              style: txtTheme.headline5!.copyWith(
                color: grey,
              ),
            ),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: _animationController!,
              child: Text(
                'You know the WHAT I know the HOW, let\'s smash our heads together and make something amazing',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(
                  color: Colors.white,

                  height: 2,
                ),
              ),
            ),
            const SizedBox(height: 70),
            const ContactMeButton(text: 'Let\'s work together',),
          ],
        ),
      ),
    );
  }
}
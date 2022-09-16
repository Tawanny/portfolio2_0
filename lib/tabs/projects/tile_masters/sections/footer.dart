import 'package:flutter/material.dart';
import 'package:portfolio2_0/components/contact_me/contact_me_button.dart';


import '../../../../components/copyright.dart';
import '../../../../components/social_meadia_links.dart';
import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      constraints: const BoxConstraints(maxWidth: maxWidth),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: 120,
            alignment: Alignment.bottomCenter,
            child: Text(
              'Do you have a project for me?',
              style: ResponsiveLayout.isMobile(context)
                  ? Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: grey,
                      )
                  : Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: grey,
                      ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 500,
            child: Text(
              'With no doubt I can take you fresh from your idea and sketches, go from concept to investment, or take your startup to the next level. I am here to support your unique business needs. Challenge me, let us bring your idea to life.',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.white,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          const SizedBox(
            height: 40,
            width: 200,
            child: ContactMeButton(
              text: 'LET\'S TALK',
            ),
          ),
          const Spacer(flex: 2),
          Text(
            'Let\'s Meet on Social ',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const SocialMediaLinks(
            iconSize: 40,
          ),
          const Spacer(),
          const Copyright(),
        ],
      ),
    );
  }
}

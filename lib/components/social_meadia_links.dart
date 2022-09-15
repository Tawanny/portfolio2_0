import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../api/api_url_launcher.dart';

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({
    Key? key,
    this.iconSize = 22,
    this.boxWidth = 200,
  }) : super(key: key);
  final double iconSize;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxWidth,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
        SocialMediaLink(
         icon: FontAwesomeIcons.linkedin,
          iconColor: Colors.blue.shade800,
          iconSize: iconSize,
          url: 'https://www.linkedin.com/in/danmore-mutumbami-96b0101a5/',
        ),
            SocialMediaLink(
              icon: FontAwesomeIcons.github,
              iconColor: Colors.blue,
              iconSize: iconSize,
              url: 'https://github.com/Tawanny',
            ),
            SocialMediaLink(
              icon: FontAwesomeIcons.twitter,
              iconColor: Colors.blue,
              iconSize: iconSize,
              url: 'https://twitter.com/DMutumbami',
            ),

      ]),
    );
  }
}

class SocialMediaLink extends StatelessWidget {
  const SocialMediaLink({
    required this.url,
    required this.icon,
    required this.iconColor,
    Key? key, required this.iconSize,
  }) : super(key: key);

  final String? url;
  final IconData? icon;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          URLLauncherAPI.openLink(url: url!);
        },
        icon: Icon(
            icon!,
        color: iconColor,
        size: iconSize,
        ),
    );
  }
}
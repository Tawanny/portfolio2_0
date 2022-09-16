import 'package:flutter/material.dart';
import 'package:portfolio2_0/screen_sections/menu_strip.dart';
import 'package:portfolio2_0/components/social_meadia_links.dart';

import '../helpers/constants.dart';
import '../helpers/theme_colors.dart';
import '../components/contact_me/contact_me_button.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return
        Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) =>  const LinearGradient(
                colors: [Colors.black, Colors.black12],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ).createShader(rect),
              blendMode: BlendMode.darken,
              child: Container(
                height: 1000,
                constraints:
                const BoxConstraints(maxWidth: maxWidth),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/danny.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black54,
                      BlendMode.darken,
                    ),

                  ),

                ),
    ),
    ),
                 Positioned(
                   bottom: 80,
                   right: size.width < 775 ? 20 : 80,
                   left: size.width < 775 ? 20 : 100,
                   child: Container(
                     constraints: const BoxConstraints(maxWidth: maxWidth),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [

                         Text(
                           'Danmore Mutumbami',
                           textAlign: TextAlign.center,
                           style: txtTheme.headline4!.copyWith(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         const SizedBox(height: 20),
                         Text(
                           'Flutter Developer / UI Designer',
                           textAlign: TextAlign.center,
                           style: txtTheme.headline6!.copyWith(
                             color: primaryColor,
                           ),
                         ),
                         const SizedBox(height: 30),
                         const SocialMediaLinks(),
                         const SizedBox(height: 30),
                         const ContactMeButton(text: 'Contact Me'),

                       ],
                     ),
                   ),
                 ),
            const Positioned(
              left: 0,
              top: 0,
              child: MenuStrip(),),

          ],
        );
  }
}
import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class MyRoles extends StatelessWidget {
  const MyRoles({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ResponsiveLayout.isMobile(context) ? 15 : 100,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: blue,
        shadowColor: Colors.white.withOpacity(0.25),
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: ResponsiveLayout.isMobile(context) ?
                CrossAxisAlignment.center
            : CrossAxisAlignment.start,
            children: [
              Text(
                'My Roles on the project:',
                style: txtTheme.headline5!.copyWith(
                  color: grey,
                ),
                textAlign: ResponsiveLayout.isMobile(context)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
              const SizedBox(height: 25),
              Text(
                'As per the clients\' request, I was tasked with building the site from ground up. The clients didn\'t have much knowledge on how they want their site to look like or any prior design sketches. My job was to create some sketches and prototypes which they chose from. From there I went into development with constant feedback from the clients up until publishing. ',
                style: txtTheme.subtitle1!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  height: 1.7,
                ),
                textAlign: ResponsiveLayout.isMobile(context)
                    ? TextAlign.center
                    : TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class OverViewCard extends StatelessWidget {
  const OverViewCard({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isMobile(context)
        ? Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: kBgLightColor,
              shadowColor: blue.withOpacity(0.25),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Overview and Context:',
                      style: txtTheme.headline5!.copyWith(
                        color: grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 25),
                    Text(
                      'The goal for this website was simple, to reach more clients online. So, I designed it to be simple, very easy to use and straight forward but communicating the business\'s values and uniqueness.',
                      style: txtTheme.subtitle1!.copyWith(
                        color: darkColor,
                        fontWeight: FontWeight.normal,
                        height: 1.7,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 6,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: kBgLightColor,
              shadowColor: blue.withOpacity(0.25),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview and Context:',
                      style: txtTheme.headline5!.copyWith(
                        color: grey,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      tileMastersOverview,
                      style: txtTheme.subtitle1!.copyWith(
                        color: darkColor,
                        fontWeight: FontWeight.normal,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

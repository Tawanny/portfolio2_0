import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class ProjectObjectives extends StatelessWidget {
  const ProjectObjectives({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width < 910
        ? SizedBox(
            height: ResponsiveLayout.isMobile(context) ? 350 : 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 60, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  ResponsiveLayout.isMobile(context)
                      ? Text(
                          'Objectives and Goals',
                          style: txtTheme.headline5!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : Text(
                          'Objectives and Goals',
                          style: txtTheme.headline4!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                  const Spacer(),
                  ResponsiveLayout.isMobile(context)
                      ? Text(
                          tileMastersGoalsMobile,
                          style: txtTheme.subtitle1!.copyWith(
                            color: kBgLightColor,
                            fontWeight: FontWeight.normal,
                            height: 1.7,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : Text(
                          tileMastersGoals,
                          style: txtTheme.subtitle1!.copyWith(
                            color: kBgLightColor,
                            fontWeight: FontWeight.normal,
                            height: 1.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          )
        : Container(
            height: 500,
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 90, left: 50, right: 50),
                    child: Column(
                      children: [
                        Container(
                            width: 500,
                            height: 300,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/flutter-desktop.png'),
                                  fit: BoxFit.fitHeight,
                                ))),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(
                          'Objectives and Goals',
                          style: txtTheme.headline4!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          tileMastersGoals,
                          style: txtTheme.subtitle1!.copyWith(
                            color: kBgLightColor,
                            fontWeight: FontWeight.normal,
                            height: 1.7,
                          ),
                        ),
                        const Spacer(flex: 2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class DesignSystem extends StatelessWidget {
  const DesignSystem({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout.isMobile(context)
        ? Container(
            height: 850,
            constraints: const BoxConstraints(maxWidth: maxWidth),
            alignment: Alignment.center,
            child:
                 Padding(
                    padding: const EdgeInsets.only(left: 60, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          'Design System:',
                          style: txtTheme.headline5!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),const SizedBox(height: 15),
                        SvgPicture.asset('assets/svg/Palette-bro.svg', height: 200,),
                        const SizedBox(height: 15),
                        Text(
                          'I love creating a design system that is simple, aesthetic and consistent throughout All pages. A design system that communicate my clients\'s uniqueness. ',
                          style: txtTheme.bodyText1!.copyWith(
                            color: kBgLightColor,
                            height: 1.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Divider(
                          color: primaryColor.withOpacity(0.5),
                        ),
                        Text(
                          'Typography',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'SYNE Font and all its variations',
                          style: txtTheme.bodyText1!.copyWith(
                            color: kBgLightColor,
                            height: 1.7,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Primary Colors',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Red',
                                    style: txtTheme.bodyText1!.copyWith(
                                      color: kBgLightColor,
                                      height: 1.7,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[900],
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Blue',
                                    style: txtTheme.bodyText1!.copyWith(
                                      color: kBgLightColor,
                                      height: 1.7,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Secondary Colors',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.black,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Black',
                                    style: txtTheme.bodyText1!.copyWith(
                                      color: kBgLightColor,
                                      height: 1.7,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 40),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.white,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'White',
                                    style: txtTheme.bodyText1!.copyWith(
                                      color: kBgLightColor,
                                      height: 1.7,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: primaryColor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),



          )
        : Container(
            height: 550,
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 90, left: 50, right: 50),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 500,
                          height: 300,
                          child: SvgPicture.asset('assets/svg/Palette-bro.svg'),
                        ),
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
                          'Design System:',
                          style: txtTheme.headline4!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'I love creating a design system that is simple, aesthetic and consistent throughout All pages. A design system that communicate my clients\'s uniqueness. ',
                          style: txtTheme.bodyText1!.copyWith(
                            color: kBgLightColor,
                            height: 1.7,
                          ),
                        ),
                        const Spacer(),
                        Divider(
                          color: primaryColor.withOpacity(0.5),
                        ),
                        Text(
                          'Typography',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'SYNE Font and all its variations',
                          style: txtTheme.bodyText1!.copyWith(
                            color: kBgLightColor,
                            height: 1.7,
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Primary Colors',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.red,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Red',
                                  style: txtTheme.bodyText1!.copyWith(
                                    color: kBgLightColor,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 40),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue[900],
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Blue',
                                  style: txtTheme.bodyText1!.copyWith(
                                    color: kBgLightColor,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Secondary Colors',
                          style: txtTheme.subtitle1!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.black,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Black',
                                  style: txtTheme.bodyText1!.copyWith(
                                    color: kBgLightColor,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 40),
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'White',
                                  style: txtTheme.bodyText1!.copyWith(
                                    color: kBgLightColor,
                                    height: 1.7,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(
                          color: primaryColor.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class TileMastersHeader extends StatelessWidget {
  const TileMastersHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(maxWidth: maxWidth),
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/tile_masters_bg.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black54,
            BlendMode.darken,
          ),
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
            child: TextButton.icon(
              onPressed: () => Get.back(),
              label: Text(
                'Close Project',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: primaryColor,
                  fontWeight: FontWeight.bold
                    ),
              ),
              icon: const Icon(
                Icons.close,
                size: 20,
                color: primaryColor,
              ),
            ),
          ),
          //Header(),
          Spacer(),
          HeadBanner(),
        ],
      ),
    );
  }
}

class HeadBanner extends StatelessWidget {
  const HeadBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme txtTheme = Theme.of(context).textTheme;
    return Container(
      height: 600,
      constraints: const BoxConstraints(maxWidth: maxWidth),
      child: ResponsiveLayout.isMobile(context)
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Tile Masters',
                    style: txtTheme.headline3!.copyWith(
                      color: grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Durable Home Renovation infused with style at an affordable rate.',
                    style: txtTheme.headline5!.copyWith(
                      color: bodyTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 150),
                  Text(
                    'Website Design and Development',
                    style: txtTheme.subtitle1!.copyWith(
                      color: bodyTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        'www.tilemasterplan.com',
                        style: txtTheme.bodyText1!.copyWith(
                          color: grey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Icon(
                          Icons.chevron_right,
                          color: primaryColor,
                          size: 30,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      toolsAndRoles(
                        context,
                        'Tools :',
                        'Wix',
                      ),
                      const Spacer(flex: 2),
                      toolsAndRoles(
                        context,
                        'Target Devices :',
                        'Web',
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            )
          : Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tile Masters',
                          style: txtTheme.headline3!.copyWith(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Durable Home Renovation infused with style at an affordable rate.',
                          style: txtTheme.headline5!.copyWith(
                            color: bodyTextColor,
                          ),
                        ),
                        const SizedBox(height: 100),
                        Text(
                          'Website Design and Development',
                          style: txtTheme.subtitle1!.copyWith(
                            color: bodyTextColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'www.tilemasterplan.com',
                              style: txtTheme.bodyText1!.copyWith(
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Icon(
                                Icons.chevron_right,
                                color: primaryColor,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        toolsAndRoles(
                          context,
                          'Tools :',
                          'Wix',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 90, left: 50, right: 50),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 500,
                          height: 300,
                        ),
                        const Spacer(),
                        toolsAndRoles(
                          context,
                          'Target Devices :',
                          'Web',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget toolsAndRoles(BuildContext context, String? heading, String? items) {
    TextTheme txtTheme = Theme.of(context).textTheme;
    return Container(
      height: 80,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.only(bottom: 72),
            width: 3,
            height: 60,
            color: primaryColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                heading!,
                style: txtTheme.bodyText1!.copyWith(
                  color: primaryColor,
                  fontSize: 12,
                ),
              ),
              Text(
                items!,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

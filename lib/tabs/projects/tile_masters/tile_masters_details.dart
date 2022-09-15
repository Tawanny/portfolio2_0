import 'package:flutter/material.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/client_review.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/design_system.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/footer.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/my_role.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/overview_card.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/project_objectives.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/sections/tile_masters_header.dart';

import '../../../helpers/constants.dart';
import '../../../helpers/responsive_layout.dart';
import '../../../helpers/theme_colors.dart';

class TileMastersDetails extends StatelessWidget {
  static const routeName = '/tile_masters_details';

  const TileMastersDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: blue,

      body: Container(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        color: blue,
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TileMastersHeader(),
              const SizedBox(height: 100),
              OverViewCard(txtTheme: txtTheme),
              const SizedBox(height: 100),
              ProjectObjectives(txtTheme: txtTheme),
              const SizedBox(height: 50),
              MyRoles(txtTheme: txtTheme),
              const SizedBox(height: 100),
              ResponsiveLayout.isMobile(context)
                  ? const SizedBox()
                  : SizedBox(
                      width: 900,
                      child: Image.asset(
                        'assets/images/flutter-desktop.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
              ResponsiveLayout.isMobile(context)
                  ? const SizedBox()
                  : const SizedBox(height: 100),
              DesignSystem(txtTheme: txtTheme),
              const SizedBox(height: 100),
              ClientReview(txtTheme: txtTheme),
              const SizedBox(height: 100),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget toolsAndRoles(BuildContext context, String? heading, String? items) {
    TextTheme txtTheme = Theme.of(context).textTheme;
    return SizedBox(
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
                  color: grey,
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

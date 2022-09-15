import 'package:flutter/material.dart';
import 'package:portfolio2_0/tabs/about_me/about_me.dart';
import 'package:portfolio2_0/tabs/pricing/pricing_policy.dart';
import 'package:portfolio2_0/tabs/projects/all_projects.dart';
import 'package:portfolio2_0/tabs/services/all_services.dart';

import 'screen_sections/info_side.dart';
import 'screen_sections/menu_strip.dart';
import 'screen_sections/profile_picutre.dart';
import 'helpers/theme_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          color: blue,
          child: Row(
            children:   [
              // const MenuStrip(),
              const Expanded(
                child: ProfilePicture(),
              ),
              Expanded(

                child: Container(
                    decoration:   BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/bg.jpg',),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            blue.withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        ),
                    ),
                  child: Column(
                    children:   [
                      TabBar (
                        isScrollable: true,
                        labelStyle: txtTheme.subtitle1,
                          tabs:
                      const [
                        Tab(text: 'Services'),
                        Tab(text: 'About Me'),
                        Tab(text: 'Pricing'),
                        Tab(text: 'Projects'),
                      ]),
                    const SizedBox(height: 10),
                      const Expanded(
                        child: TabBarView(
                          children: [
                            Center(
                              child:AllServices() ,
                            ),
                            Center(
                              child: AboutMe(),
                            ),
                            Center(
                              child: PricingPolicy(),
                            ),
                            Center(
                              child: AllProjects(),
                            ),
                          ],),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

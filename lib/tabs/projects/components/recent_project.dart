import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:portfolio2_0/components/contact_me/contact_me_button.dart';
import 'package:portfolio2_0/components/default_button.dart';
import 'package:portfolio2_0/tabs/projects/tile_masters/tile_masters_details.dart';
import 'package:provider/provider.dart';

import '../../../../helpers/constants.dart';
import '../../../helpers/theme_colors.dart';
import '../../../models/projects.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    var projectData = Provider.of<Projects>(context);
    List<Project> projects = projectData.getProjects;
    Project project = projects[widget.index!];

    return InkWell(
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 400,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                child: Image.asset(
                  project.imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      project.roles!.toUpperCase(),
                      style: const TextStyle(
                        color: kTextColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      project.title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(height: 1.5, color: blue),
                    ),
                    const Spacer(flex: 2),
                    DefaultButton(
                      onPressed: () => Get.toNamed(project.routeName!),
                      text: 'View Project',
                    ),
                    SizedBox(height: project.inProgress! ? 10 : 0),
                    project.inProgress!
                        ? Text(
                            'Project In Progress',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(height: 1.5, color: grey),
                            textAlign: TextAlign.center,
                          )
                        : const SizedBox(),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

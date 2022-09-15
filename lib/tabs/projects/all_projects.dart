import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/projects.dart';
import 'components/recent_project.dart';

class AllProjects extends StatelessWidget {
  const AllProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var projectData = Provider.of<Projects>(context);
    List<Project> projects = projectData.getProjects;

    return SingleChildScrollView(
      child: Column(
          children: List.generate(
            projects.length,
                (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: RecentWorkCard(index: index),
            ),
          ),
        
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../helpers/constants.dart';
import '../tabs/projects/tile_masters/tile_masters_details.dart';

class Project {
  final String? id, title, description, imageUrl, routeName;
  final String? shortDescription, roles, tools, theClient;
  final bool? inProgress;
  final List<String>? targetDevices;

  Project({
    this.id,
    this.title,
    this.routeName,
    this.description,
    this.imageUrl,
    this.tools,
    this.roles,
    this.targetDevices,
    this.shortDescription,
    this.theClient,
    this.inProgress = false,
  });
}

class Projects with ChangeNotifier {
  final List<Project> _projects = [
    Project(
      id: 'project1',
      title: 'The Tile Masters',
      routeName: TileMastersDetails.routeName,
      shortDescription:
      'Home Renovation infused with style at an affordable rate and durable',
      description: '$portfolioProject \n\n $portfolioProject2',
      imageUrl: 'assets/images/flutter-desktop.png',
      targetDevices: ['WEB'],
      theClient:
      'Construction company based in Upington South Africa. Professionals when it comes to tiling, paving annd other home renovation services. Their services are affordable, durable and they don\'t waste any time ',
      roles: 'Web Design, Development,',
      tools: 'Wix',
    ),
    Project(
      id: 'project2',
      title: 'Duplo',
      routeName: 'DuploDetails.routeName',
      shortDescription: 'Bringing Law services to your fingertips',
      description: '$portfolioProject \n\n $portfolioProject2',
      imageUrl: 'assets/images/flutterandroid-ios.png',
      inProgress: true,
      targetDevices: ['ANDROID', 'IOS', 'WEB'],
      theClient:
      'DuPlo is a law firm based in Upington South Africa. Their aim is to help as much people as possible by simplifying and digitalising law services. They are partnered with dozens of other law firms and lawyers to help people find immediate help for their legal problems anywhere, anytime',
      roles: 'UI Design, Development, Backend Setup',
      tools: 'Figma, Flutter and Dart, Firebase, Github',
    ),
  ];

  List<Project> get getProjects {
    return _projects;
  }

  Project findById(String id) {
    return _projects.firstWhere((project) => project.id == id);
  }
}

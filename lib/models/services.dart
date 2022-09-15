

import '../helpers/constants.dart';

class Service {
  final String? id, title, description;
  final String? icon;

  Service({this.id, this.title, this.icon, this.description});
}


List<Service> services = [
  Service(
      id: '1',
      title: 'UI Design',
      description:
      'Landing Pages, Wire-framing, \nPrototyping, \nMobile Apps, Web Apps, Desktop Apps',
      icon: 'assets/images/user-interface.png',

      ),
  Service(
      id: '2',
      title: 'Development',
      description:
      'Dart/Flutter, \nResponsive and Adaptive Apps, \nfor Mobile, Web, Desktop',

      icon: 'assets/images/ux.png',),
  Service(
    id: '3',
    title: 'Web Design/Development',
    description:
    'Wix Editor/Editor X,\nResponsive, Beautiful Modern Websites, \nLanding Pages, E-Commerce, Portfolios, etc',

    icon: 'assets/images/web-development.png',),

  Service(
      id: '4',
      title: 'Google My Business',
      description:
      'Get found locally on every search \nby your customers using google business services',

      icon: 'assets/images/google.png',),
  Service(
      id: '5',
      title: 'SEO and Analytics',
      description:
      'Revise what\'s working and what\'s not on your site \nAnd improve your search engine ratings by my analytics services',

      icon: 'assets/images/seo.png',),
  Service(
      id: '6',
      title: 'Site/App Maintenance',
      description:
      'Let your site stay relevant,\nUpdated and bug free \nby continuous checking and upgrading',

      icon: 'assets/images/system.png',),
];

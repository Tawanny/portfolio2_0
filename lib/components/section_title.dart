import 'package:flutter/material.dart';

import '../helpers/theme_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,

    required this.title,
  }) : super(key: key);


  final String title;

  @override
  Widget build(BuildContext context) {
    var txtTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        title,
        style: txtTheme.headline5!.copyWith(
          color: grey,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
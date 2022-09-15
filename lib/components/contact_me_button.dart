import 'package:flutter/material.dart';

import '../helpers/theme_colors.dart';

class ContactMeButton extends StatelessWidget {
  const ContactMeButton({
    Key? key, required this.text,
    this.txtColor = Colors.black,
  }) : super(key: key);
final String text;
final Color txtColor;


  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        elevation: 15,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 8.0, vertical: 5.0),
        child: Text(
          text,
          style: txtTheme.subtitle1!.copyWith(
            color: txtColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
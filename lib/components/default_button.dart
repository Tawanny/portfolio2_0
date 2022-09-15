import 'package:flutter/material.dart';

import '../helpers/theme_colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text,
    this.txtColor = Colors.black, required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color txtColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return ElevatedButton(
      onPressed: onPressed,
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
          textAlign: TextAlign.center,
          style: txtTheme.subtitle1!.copyWith(
            color: txtColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
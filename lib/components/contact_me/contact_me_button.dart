import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio2_0/components/contact_me/components/send_button.dart';

import '../../helpers/theme_colors.dart';
import '../social_meadia_links.dart';
import 'components/calendly.dart';
import 'components/contact_form.dart';

class ContactMeButton extends StatelessWidget {
  const ContactMeButton({
    Key? key,
    required this.text,
    this.txtColor = Colors.black,
  }) : super(key: key);
  final String text;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;

    return ElevatedButton(
      onPressed: () => showCustomDialog(context),
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
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
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

  Future showCustomDialog(BuildContext context) {
    return showModal(
      configuration: const FadeScaleTransitionConfiguration(
        transitionDuration: Duration(seconds: 2),
        reverseTransitionDuration: Duration(seconds: 1),
      ),
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CONTACT ME',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: grey,
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.close,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ],
          ),
        ),

        content: SizedBox(
        height: 700,
          width: 500,
          child: ListView(
            children: const [
              SocialMediaLinks(
                iconSize: 30,
                boxWidth: 300,
              ),
              SizedBox(height: 30),
              Calendly(),
              SizedBox(height: 20),
              ContactForm(),
            ],
          ),
        ),

      ),
    );
  }
}



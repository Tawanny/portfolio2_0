import 'package:flutter/material.dart';

import '../../../api/api_url_launcher.dart';
import '../../../helpers/theme_colors.dart';

class SendButton extends StatefulWidget {
   SendButton({
    Key? key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.projectTypeController,
    required this.descriptionController,
     this.thankYouNote = '',
  }) : super(key: key);

    String thankYouNote;
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController projectTypeController;
  final TextEditingController descriptionController;

  @override
  State<SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;
    return ElevatedButton(
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
          'Send Request',
          style: txtTheme.subtitle1!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onPressed: () async {
        final isValid = widget.formKey.currentState?.validate();

        if (isValid!) {
          widget.formKey.currentState?.save();
          URLLauncherAPI.sendEmail(
            name: widget.nameController.text,
            email: widget.emailController.text,
            projectType: widget.projectTypeController.text,
            description: widget.descriptionController.text,
          );

          widget.nameController.clear();
          widget.emailController.clear();
          widget.projectTypeController.clear();
          widget.descriptionController.clear();
          widget.thankYouNote = 'Thank you very much, I will be in touch!';
        }
      },
    );
  }
}

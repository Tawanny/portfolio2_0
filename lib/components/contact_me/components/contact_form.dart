import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio2_0/components/contact_me/components/send_button.dart';

import '../../../helpers/constants.dart';
import '../../../helpers/theme_colors.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final formKey = GlobalKey<FormState>();
  final FocusNode nameNode = FocusNode();
  final FocusNode emailNode = FocusNode();
  final FocusNode projectTypeNode = FocusNode();
  final FocusNode descriptionNode = FocusNode();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final projectTypeController = TextEditingController();
  final descriptionController = TextEditingController();

  String name = '';
  String email = '';
  String projectType = '';
  String description = '';



  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Wrap(
        spacing: defaultPadding * 2,
        runSpacing: defaultPadding,
        children: [
          SizedBox(
            width: 500,
            child: TextFormField(
              onSaved: (value) {
                setState(() {
                  name = value!;
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name here';
                } else if (value.length < 3) {
                  return 'For authenticity, I would prefer a full name please';
                }
                return null;
              },
              focusNode: nameNode,
              controller: nameController,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                  ),
              decoration: const InputDecoration(
                labelText: 'Your Name',
              ),
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            width: 500,
            child: TextFormField(
              onSaved: (value) {
                setState(() {
                  email = value!;
                });
              },
              validator: (value) {
                const checkPattern =
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                final regExp = RegExp(checkPattern);

                if (!regExp.hasMatch(value!)) {
                  return 'Oh! darn it, your email seem to be invalid';
                } else if (value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              focusNode: emailNode,
              controller: emailController,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                  ),
              decoration: const InputDecoration(
                labelText: 'Email Address',
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            width: 500,
            child: TextFormField(
              onSaved: (value) {
                setState(() {
                  projectType = value!;
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'I would like to know the project type please';
                }
                return null;
              },
              focusNode: projectTypeNode,
              controller: projectTypeController,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                  ),
              decoration: const InputDecoration(
                labelText: 'Project Type',
              ),
              textInputAction: TextInputAction.next,
            ),
          ),
          SizedBox(
            child: TextFormField(
              onSaved: (value) {
                setState(() {
                  description = value!;
                });
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'I little description will go a long way';
                }
                return null;
              },
              focusNode: descriptionNode,
              controller: descriptionController,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                  ),
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              textInputAction: TextInputAction.newline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 20),
            child: Center(
              child: SendButton(
                formKey: formKey,
                nameController: nameController,
                emailController: emailController,
                projectTypeController: projectTypeController,
                descriptionController: descriptionController,
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(bottom: 10.0),
          //   child: Center(
          //     child: Text(
          //       'thankYouNote',
          //       style: Theme.of(context).textTheme.headline6!.copyWith(
          //         color: grey,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

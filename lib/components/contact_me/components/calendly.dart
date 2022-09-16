

import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
import '../../../helpers/theme_colors.dart';

class Calendly extends StatelessWidget {
  const Calendly({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  const [
        CalendlyItem(
              text:
                  'Book a meeting'
          ),

        SizedBox(height: 10),

             CalendlyItem(
               text:
               'Schedule a call'


        ),
      ],
    );
  }
}

class CalendlyItem extends StatefulWidget {
  const CalendlyItem({
    Key? key, required this.text,

  }) : super(key: key);

  final String text;

  @override
  State<CalendlyItem> createState() => _CalendlyItemState();
}

class _CalendlyItemState extends State<CalendlyItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,

        padding: size.width < 900 ? const EdgeInsets.all(10)
            :const EdgeInsets.only(left: 40),
        child: size.width < 900 ?
        Column(
          children: [
            Image.asset(
              'assets/icons/Calendly-Logo.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(height: 20),
            Text(
              widget.text,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: blue,
              ),
              textAlign: TextAlign.center,
            ),


          ],
        )
        :Row(
          children: [
            Image.asset(
              'assets/icons/Calendly-Logo.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 20),
            Text(
             widget.text,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: blue,
                  ),

            ),


          ],
        ),
      ),
    );
  }
}

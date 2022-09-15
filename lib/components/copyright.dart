import 'package:flutter/material.dart';

import '../../../helpers/constants.dart';
import '../helpers/theme_colors.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: const [
          Spacer(),
          Text(
            'Created by Danmore Mutumbami 2022',
            style: TextStyle(
              color: kTextColor,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

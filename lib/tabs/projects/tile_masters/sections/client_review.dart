import 'package:flutter/material.dart';

import '../../../../helpers/constants.dart';
import '../../../../helpers/responsive_layout.dart';
import '../../../../helpers/theme_colors.dart';

class ClientReview extends StatelessWidget {
  const ClientReview({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width < 1100 ?
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: kBgLightColor,
        shadowColor:  blue.withOpacity(0.25),
        elevation: 20,
        child: Padding(
          padding:
          ResponsiveLayout.isMobile(context) ?
          const EdgeInsets.all(20)
              :const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'After All being said and done, this what the client had to say:',
                style: txtTheme.headline5!.copyWith(
                  color: grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      const CircleAvatar(
                        radius: 60,
                        child: Icon(Icons.person_outline, size: 60,),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Pearson Gumbura',
                        style: txtTheme.subtitle1!.copyWith(
                          color: grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'CEO of Tile Master Plan',
                        style: txtTheme.bodyText1!.copyWith(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 600,
                    child: Text(
                      '\"$portfolioProject\"',
                      style: txtTheme.subtitle1!.copyWith(
                        color: darkColor,
                        fontWeight: FontWeight.normal,
                        height: 1.7,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),




        ),
      ),
    )

    :Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: kBgLightColor,
        shadowColor:  blue.withOpacity(0.25),
        elevation: 20,
        child: Padding(
          padding:
          const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'After All being said and done, this what the client had to say:',
                style: txtTheme.headline5!.copyWith(
                  color: grey,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Column(
                    children:  [
                      const CircleAvatar(
                        radius: 60,
                        child: Icon(Icons.person_outline, size: 60,),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Pearson Gumbura',
                        style: txtTheme.subtitle1!.copyWith(
                          color: grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'CEO of Tile Master Plan',
                        style: txtTheme.bodyText1!.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  SizedBox(
                    width: 600,
                    child: Text(
                      '\"$portfolioProject\"',
                      style: txtTheme.subtitle1!.copyWith(
                        color: darkColor,
                        fontWeight: FontWeight.normal,
                        height: 1.7,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
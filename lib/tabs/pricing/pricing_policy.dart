import 'package:flutter/material.dart';
import 'package:portfolio2_0/components/contact_me/contact_me_button.dart';

import '../../helpers/constants.dart';
import '../../helpers/theme_colors.dart';

class PricingPolicy extends StatefulWidget {
  const PricingPolicy({
    Key? key,

  }) : super(key: key);

  @override
  State<PricingPolicy> createState() => _PricingPolicyState();
}

class _PricingPolicyState extends State<PricingPolicy> with SingleTickerProviderStateMixin{
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController!.forward();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    var txtTheme = themeData.textTheme;
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'I know firsthand how finances can hinder one\'s progress in anything. That is why I came up with a simple solution to make getting an app or websites as painless as possible',
              style: txtTheme.headline6!.copyWith(
                color: grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Divider(color: grey.withOpacity(0.5), thickness: 1.5),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
               width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Consultative.png',
                          ),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FadeTransition(
                    opacity: _animationController!,
                    child: Text(
                      flexiblePayment,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                        color: Colors.white,

                        height: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(color: grey.withOpacity(0.5), thickness: 1.5),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: FadeTransition(
                    opacity: _animationController!,
                    child: Text(
                      securePayment,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(
                        color: Colors.white,

                        height: 2,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/simple_transaction.png',
                            ),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Divider(color: grey.withOpacity(0.5), thickness: 1.5),
            const SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
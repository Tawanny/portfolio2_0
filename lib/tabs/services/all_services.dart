import 'package:flutter/material.dart';
import 'package:portfolio2_0/helpers/responsive_layout.dart';

import '../../helpers/constants.dart';
import '../../helpers/theme_colors.dart';
import '../../models/services.dart';
import 'components/service_card.dart';

class AllServices extends StatelessWidget {
  const AllServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Text(
                'Whether you are looking to start a new project for your business or a developer looking to collaborate, I have got you covered!!',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: grey,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              color: grey.withOpacity(0.5),
              thickness: 1.5,
            ),
            const SizedBox(height: 20),
            ResponsiveLayout.isDesktop(context)
                ? GridView.builder(
                    controller: ScrollController(),
                    shrinkWrap: true,
                    itemCount: services.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: defaultPadding,
                      mainAxisSpacing: defaultPadding / 2,
                    ),
                    itemBuilder: (context, index) => ServiceCard(
                      service: services[index],
                    ),
                  )
                : ListView(
              shrinkWrap: true,
                    children: List.generate(
                      services.length,
                      (index) => ServiceCard(
                        service: services[index],
                      ),
                    ),
                  ),
            const SizedBox(height: 10),
            Divider(
              color: grey.withOpacity(0.5),
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}

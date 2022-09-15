import 'package:flutter/material.dart';
import 'package:portfolio2_0/helpers/responsive_layout.dart';

import '../../../helpers/theme_colors.dart';
import '../../../models/services.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({Key? key, required this.service}) : super(key: key);

  final Service service;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard>
    with SingleTickerProviderStateMixin {
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
    ThemeData theme = Theme.of(context);
    TextTheme txtTheme = theme.textTheme;

    return ResponsiveLayout.isDesktop(context)
        ? SizedBox(
            height: 100,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.service.icon!,
                  height: 50,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.service.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: txtTheme.headline6!.copyWith(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 15),
                FadeTransition(
                  opacity: _animationController!,
                  child: Text(
                    widget.service.description!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: txtTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(flex: 2),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: ListTile(
              tileColor: blue.withOpacity(0.5),
              leading: Image.asset(
                widget.service.icon!,
                height: 50,
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 10),
                child: Text(
                  widget.service.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: txtTheme.headline6!.copyWith(
                    fontSize: size.width < 760 ? 14 : 16,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: FadeTransition(
                opacity: _animationController!,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    widget.service.description!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: txtTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

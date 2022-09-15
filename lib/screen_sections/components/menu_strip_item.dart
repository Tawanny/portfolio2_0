import 'package:flutter/material.dart';

class MenuStripItem extends StatefulWidget {
  MenuStripItem({
    Key? key,
    required this.iconUrl,
    required this.onTap,
    this.height = 30,
    this.width = 30, required this.text,
  }) : super(key: key);

  final String iconUrl, text;
  final VoidCallback onTap;
  double height;
  double width;

  @override
  State<MenuStripItem> createState() => _MenuStripItemState();
}

class _MenuStripItemState extends State<MenuStripItem>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _defaultTweenAnimation;
  late Animation<double> _containerHeightScaleTweenAnimation;
  late Animation<double> _containerWidthScaleTweenAnimation;
  late Animation<double> _containerAlignTweenAnimation;
  late Animation<double> _containerBorderRadiusAnimation;
  late Animation<Color?> _textColorAnimation;
  late Animation<Color?> _containerColorTransition;

  late Animation<double> _curvedAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 375,
      ),
    );
    _curvedAnimation = CurvedAnimation(parent: _controller, curve: Curves.ease);
    _defaultTweenAnimation =
        Tween(begin: 0.0, end: 1.0).animate(_curvedAnimation);
    _containerHeightScaleTweenAnimation =
        Tween(begin: 40.0, end: 40.0).animate(_curvedAnimation);
    _containerWidthScaleTweenAnimation =
        Tween(begin: 40.0, end: 300.0).animate(_curvedAnimation);
    _containerAlignTweenAnimation =
        Tween(begin: -1.0, end: 1.0).animate(_curvedAnimation);
    _containerBorderRadiusAnimation =
        Tween(begin: 100.0, end: 30.0).animate(_curvedAnimation);
    _textColorAnimation =
        ColorTween(begin: Colors.transparent, end: Colors.white).animate(_curvedAnimation);
   _containerColorTransition =
       ColorTween(begin: Colors.transparent, end: Colors.black54).animate(_curvedAnimation);

    super.initState();
  }

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        width: 300,
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _containerHeightScaleTweenAnimation,
              builder: (context, child) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: _containerHeightScaleTweenAnimation.value,
                    width: _containerWidthScaleTweenAnimation.value,
                    padding: const EdgeInsets.all(8.0),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: _containerColorTransition.value,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(100),
                        bottomLeft: const Radius.circular(100),
                        topRight: Radius.circular(
                            _containerBorderRadiusAnimation.value),
                        bottomRight: Radius.circular(
                            _containerBorderRadiusAnimation.value),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      widget.text,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: _textColorAnimation.value,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },


            ),

            AnimatedBuilder(
              animation: _defaultTweenAnimation,
              builder: (context, child) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (_controller.isDismissed) {
                          isOpened = true;
                          _controller.forward();
                        } else if (_controller.isCompleted) {
                          isOpened = false;
                          _controller.reverse();
                        }
                      });
                    },
                    child: Image.asset(
                      widget.iconUrl,
                      height: widget.height,
                      width: widget.width,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
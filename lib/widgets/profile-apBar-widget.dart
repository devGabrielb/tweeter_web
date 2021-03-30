import 'package:flutter/material.dart';

class ProfileApbarWidget extends StatelessWidget {
  ProfileApbarWidget({Key key, this.controller})
      : scrollerXTranslation = Tween<double>(
          begin: 0.0,
          end: 20.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.7,
              curve: Curves.ease,
            ),
          ),
        ),
        opacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.2,
              1.0,
              curve: Curves.ease,
            ),
          ),
        ),
        sizeHeight = Tween<double>(
          begin: 0,
          end: 222.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.3,
              1.0,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<double> scrollerXTranslation;
  final Animation<double> opacity;
  final Animation<double> sizeHeight;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Opacity(
      opacity: opacity.value,
      child: Container(
        transform: Matrix4.translationValues(0, scrollerXTranslation.value, 0),
        height: sizeHeight.value,
        width: 192,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: sizeHeight.value > 30.0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Divider(),
                  Container()
                ],
              )
            : Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }
}

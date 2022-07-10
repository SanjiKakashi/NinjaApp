import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation colorAnimation;
  Animation<double> sizeAnimation;
  bool isHeart = false;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(controller);
    sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 25, end: 35), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 35, end: 25), weight: 50),
    ]).animate(controller);

    setState(() {});

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isHeart = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isHeart = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, _) {
        return FlatButton(
            child: Icon(
              Icons.favorite,
              color: colorAnimation.value,
              size: sizeAnimation.value,
            ),
            onPressed: () {
              isHeart ? controller.reverse() : controller.forward();
            });
      },
    );
  }
}

import 'package:flutter/material.dart';


class ColorCycleBackground extends StatefulWidget {
  @override
  _ColorCycleBackgroundState createState() => _ColorCycleBackgroundState();
}

class _ColorCycleBackgroundState extends State<ColorCycleBackground>
    with SingleTickerProviderStateMixin {
  Animatable<Color> _anim;
  AnimationController _controller;

  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();
    _anim = TweenSequence(<TweenSequenceItem<Color>>[
      TweenSequenceItem<Color>(
        tween: ColorTween(begin: Colors.red, end: Colors.green),
        weight: 1.0,
      ),
      TweenSequenceItem<Color>(
        tween: ColorTween(begin: Colors.green, end: Colors.blue),
        weight: 1.0,
      ),
      TweenSequenceItem<Color>(
        tween: ColorTween(begin: Colors.blue, end: Colors.red),
        weight: 1.0,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
              color: _anim.evaluate(AlwaysStoppedAnimation(_controller.value)),
              width: double.infinity,
              height: double.infinity);
        });
  }
}

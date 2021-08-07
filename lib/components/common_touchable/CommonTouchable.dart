import 'dart:async';

import 'package:common_ui_toolkit/components/common_touchable/TouchableEffect.dart';
import 'package:flutter/cupertino.dart';

class CommonTouchable extends StatefulWidget {
  final Widget? child;
  final Function? onTap;

  double lowerBound, upperBound;
  TouchableEffect? touchEffect;

  CommonTouchable({
    @required this.child,
    @required this.onTap,
    this.lowerBound = 0.8,
    this.upperBound = 1.0,
    this.touchEffect = TouchableEffect.none,
  });

  @override
  _CommonTouchableState createState() => _CommonTouchableState();
}

class _CommonTouchableState extends State<CommonTouchable>
    with TickerProviderStateMixin {
  double squareScaleA = 1;
  AnimationController? _animationController;
  @override
  void initState() {
    super.initState();
    checkAnimationType();
  }

  @override
  void didUpdateWidget(covariant CommonTouchable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (this.widget != oldWidget) {
      checkAnimationType();
    }
  }

  void checkAnimationType() {
    switch (widget.touchEffect) {
      case TouchableEffect.scaleAndFade:
        createAnimationcontroller();
        break;
      case TouchableEffect.scaleAndUp:
        createAnimationcontroller(
          lowerBound: 0.4,
        );
        break;
      default:
        createAnimationcontroller();
        break;
    }
  }

  createAnimationcontroller({lowerBound}) {
    _animationController = AnimationController(
      vsync: this,
      lowerBound: lowerBound ?? widget.lowerBound,
      upperBound: widget.upperBound,
      value: 1,
      duration: Duration(milliseconds: 10),
    );
    _animationController!.addListener(() {
      if (widget.touchEffect != TouchableEffect.none) {
        setState(() {
          squareScaleA = _animationController!.value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (_animationController != null) _animationController!.reverse();
        if (widget.onTap != null) widget.onTap!();
      },
      onTapDown: (dp) {
        if (_animationController != null) {
          _animationController!.reverse();
        }
      },
      onTapUp: (dp) {
        Timer(Duration(milliseconds: 10), () {
          if (_animationController != null) _animationController!.fling();
        });
      },
      onTapCancel: () {
        if (_animationController != null) _animationController!.fling();
      },
      child: Transform.scale(
        scale: squareScaleA,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    if (_animationController != null) _animationController!.dispose();
    super.dispose();
  }
}

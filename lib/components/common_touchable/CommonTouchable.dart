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
    switch (widget.touchEffect) {
      case TouchableEffect.scaleAndFade:
        _animationController = AnimationController(
          vsync: this,
          lowerBound: widget.lowerBound,
          upperBound: widget.upperBound,
          value: 1,
          duration: Duration(milliseconds: 10),
        );
        _animationController!.addListener(() {
          setState(() {
            squareScaleA = _animationController!.value;
          });
        });
        break;
      default:
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (widget.onTap != null) {
          if (_animationController != null) _animationController!.reverse();
          widget.onTap!();
        }
      },
      onTapDown: (dp) {
        if (widget.onTap != null && _animationController != null) {
          _animationController!.reverse();
        }
      },
      onTapUp: (dp) {
        Timer(Duration(milliseconds: 10), () {
          if (_animationController != null) {
            _animationController!.fling();
          }
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

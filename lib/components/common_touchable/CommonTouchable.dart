import 'dart:async';

import 'package:flutter/cupertino.dart';

class CommonTouchable extends StatefulWidget {
  final Widget? child;
  final Function? onTap;

  double lowerBound, upperBound;
  bool withTapEffect;

  CommonTouchable({
    @required this.child,
    @required this.onTap,
    this.lowerBound = 0.8,
    this.upperBound = 1.0,
    this.withTapEffect = true,
  });

  @override
  _CommonTouchableState createState() => _CommonTouchableState();
}

class _CommonTouchableState extends State<CommonTouchable>
    with TickerProviderStateMixin {
  double squareScaleA = 1;
  AnimationController? _controllerA;
  @override
  void initState() {
    _controllerA = AnimationController(
      vsync: this,
      lowerBound: widget.lowerBound,
      upperBound: widget.upperBound,
      value: 1,
      duration: Duration(milliseconds: 10),
    );
    _controllerA!.addListener(() {
      setState(() {
        squareScaleA = _controllerA!.value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (widget.onTap != null) {
          if (widget.withTapEffect) {
            _controllerA!.reverse();
          }
          widget.onTap!();
        }
      },
      onTapDown: (dp) {
        if (widget.onTap != null && widget.withTapEffect) {
          _controllerA!.reverse();
        }
      },
      onTapUp: (dp) {
        Timer(Duration(milliseconds: 10), () {
          _controllerA!.fling();
        });
      },
      onTapCancel: () {
        _controllerA!.fling();
      },
      child: Transform.scale(
        scale: squareScaleA,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controllerA!.dispose();
    super.dispose();
  }
}

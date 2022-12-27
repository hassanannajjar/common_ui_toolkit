// ignore_for_file: library_private_types_in_public_api, always_put_control_body_on_new_line

import 'dart:async';

import '../../../common_ui_toolkit.dart';

class CommonTouchable extends StatefulWidget {
  const CommonTouchable({
    required this.child,
    required this.onTap,
    this.touchEffect,
    Key? key,
  }) : super(
          key: key,
        );

  final Widget? child;
  final Function? onTap;
  final TouchableEffect? touchEffect;

  @override
  _CommonTouchableState createState() => _CommonTouchableState();
}

class _CommonTouchableState extends State<CommonTouchable>
    with TickerProviderStateMixin {
  double squareScaleA = 1;
  bool isDown = false;
  AnimationController? _animationController;
  bool checkIsOpacity() => widget.touchEffect!.type == TouchTypes.opacity;

  @override
  void initState() {
    super.initState();
    checkAnimationType();
  }

  @override
  void didUpdateWidget(covariant CommonTouchable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget != oldWidget) {
      checkAnimationType();
    }
  }

  void checkAnimationType() {
    switch (widget.touchEffect!.type) {
      case TouchTypes.scaleAndFade:
        createAnimationController();
        break;
      case TouchTypes.scaleAndUp:
        createAnimationController();
        break;
      default:
        _animationController = null;
        break;
    }
  }

  void createAnimationController() {
    _animationController = AnimationController(
      vsync: this,
      lowerBound: widget.touchEffect!.lowerBound,
      upperBound: widget.touchEffect!.upperBound,
      value: 1,
      duration: Duration(milliseconds: widget.touchEffect!.duration),
    );
    _animationController!.addListener(() {
      if (widget.touchEffect!.type != TouchTypes.none) {
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
      onTap: widget.onTap != null
          ? () {
              widget.onTap?.call();
            }
          : null,
      onTapDown: widget.onTap != null
          ? (TapDownDetails dp) {
              if (_animationController != null) {
                _animationController!.reverse();
              }
              if (checkIsOpacity()) {
                setState(() {
                  isDown = true;
                });
              }
            }
          : null,
      onTapUp: widget.onTap != null
          ? (TapUpDetails dp) {
              Timer(Duration(milliseconds: widget.touchEffect!.duration), () {
                if (_animationController != null) _animationController!.fling();
              });
              if (checkIsOpacity()) {
                setState(() {
                  isDown = false;
                });
              }
            }
          : null,
      onTapCancel: widget.onTap != null
          ? () {
              if (_animationController != null) _animationController!.fling();
              if (checkIsOpacity()) {
                setState(() {
                  isDown = false;
                });
              }
            }
          : null,
      child: checkIsOpacity()
          ? AnimatedOpacity(
              duration: Duration(milliseconds: widget.touchEffect!.duration),
              opacity: isDown ? widget.touchEffect!.opacity : 1,
              child: widget.child,
            )
          : Transform.scale(
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

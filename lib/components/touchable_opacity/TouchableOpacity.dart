import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TouchableOpacity extends StatelessWidget {
  Widget? child;
  Function? onPress;

  TouchableOpacity({
    this.child,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPress != null
          ? () {
              onPress!();
            }
          : null,
      child: child!,
    );
  }
}

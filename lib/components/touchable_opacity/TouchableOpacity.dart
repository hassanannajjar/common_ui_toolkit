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
    return InkWell(
      onTap: onPress != null
          ? () {
              onPress!();
            }
          : null,
      child: child!,
    );
  }
}

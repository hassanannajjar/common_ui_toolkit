import '../../index.dart';

class CommonText extends StatelessWidget {
  /// to use it import the CommonTextModel or use defaults style from CommonTextStyles.
  /// example :
  /// using CommonTextStyles model
  /// ```dart
  ///  CommonTextStyles(
  ///   fontSize: 12,
  ///  fontFamily: 'Roboto',
  /// fontWeight: 'bold',
  /// fontStyle: 'italic',
  /// color: '#ff0000',
  /// textAlign: 'center',
  /// )
  /// ```
  /// using defaults style
  ///
  /// ```dart
  /// CommonTextStyles().h5Style
  /// or
  /// CommonTextStyles().bodyStyle
  /// or etc...
  /// ```
  CommonTextModel? style;
  CommonContainerModel? containerStyle;

  /// handel opPress function
  Function? onPress;

  /// text and iconPath
  String? text, iconPath;

  /// left, right, top and bottom children widgets around the common text
  Widget? leftChild, rightChild, topChild, bottomChild;

  CommonText({
    this.text,
    this.onPress,
    this.iconPath,
    this.leftChild,
    this.rightChild,
    this.topChild,
    this.bottomChild,
    this.style,
    this.containerStyle,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextModel();
    containerStyle = containerStyle ?? CommonContainerModel();
    return GestureDetector(
      onTap: () {
        if (onPress != null) onPress!();
      },
      child: CommonContainer(
        style: containerStyle,
        child: renderCommonTextTree(
          topChild,
          rightChild,
          bottomChild,
          leftChild,
          iconPath,
          style,
          text,
        ),
      ),
    );
  }
}

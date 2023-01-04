import '../../../common_ui_toolkit.dart';

class CommonCounter extends StatefulWidget {
  const CommonCounter({
    this.initialValue = 0,
    this.minValue = 0,
    this.maxValue,
    this.increaseValue = 1,
    this.decreaseValue = 1,
    this.onChange,
    this.textStyle,
    this.valueColor,
    this.containerStyle,
    this.disableColor,
    this.enableColor,
    this.decreaseWidget,
    this.increaseWidget,
    this.counterWidth,
    this.increaseIcon,
    this.decreaseIcon,
    this.bottomChild,
    this.leftChild,
    this.rightChild,
    this.topChild,
    this.rowCrossAxisAlignment,
    this.rowMainAxisAlignment,
    this.rowMainAxisSize,
    this.columnCrossAxisAlignment,
    this.columnMainAxisAlignment,
    this.columnMainAxisSize,
    this.paddingRight,
    this.paddingTop,
    this.paddingLeft,
    this.paddingBottom,
    Key? key,
  }) : super(key: key);

  /// counter will start from this value.
  final num? initialValue;

  /// defines the minimum value the counter can reach.
  final num? minValue;

  /// defines the maximum value the counter can reach.
  final num? maxValue;

  /// defines the value added to the initialValue whenever the user press on increase button.
  final num? increaseValue;

  /// defines the value Subtracted from the initialValue whenever the user press on decrease button.
  final num? decreaseValue;

  /// handle the press on decrease/increase buttons.
  final Function(num value)? onChange;

  /// set text style for the counter number.
  final CommonTextModel? textStyle;

  /// set container style for the counter.
  final CommonContainerModel? containerStyle;

  /// change decrease widget.
  final Widget? decreaseWidget;

  /// change increase widget.
  final Widget? increaseWidget;

  /// counter has default counter container model, with a defined width 0.2.
  final double? counterWidth;

  /// initial value default color.
  final dynamic valueColor;

  /// set color to the increase or decrease icons when they are disabled.
  final dynamic disableColor;

  /// set color to the increase or decrease icons when they are enabled.
  final dynamic enableColor;

  /// keep current increase widget but change the icon(use IconData).
  final IconData? increaseIcon;

  /// keep current decrease widget but change the icon(use IconData).
  final IconData? decreaseIcon;

  /// add a widget to the right of the counter
  final Widget? rightChild;

  /// add a widget to the left of the counter

  final Widget? leftChild;

  /// add a widget to the top of the counter

  final Widget? topChild;

  /// add a widget to the bottom of the counter

  final Widget? bottomChild;

  /// row cross Axis Alignment
  final CrossAxisAlignment? rowCrossAxisAlignment;

  /// row main Axis Alignment
  final MainAxisAlignment? rowMainAxisAlignment;

  /// row main Axis size
  final MainAxisSize? rowMainAxisSize;

  /// column Cross Axis Alignment
  final CrossAxisAlignment? columnCrossAxisAlignment;

  /// column main Axis Alignment
  final MainAxisAlignment? columnMainAxisAlignment;

  /// column main Axis size
  final MainAxisSize? columnMainAxisSize;

  ///add padding to the right of the counter
  final double? paddingRight;

  ///add padding to the top of the counter
  final double? paddingTop;

  ///add padding to the left of the counter
  final double? paddingLeft;

  ///add padding to the bottom of the counter
  final double? paddingBottom;

  @override
  State<CommonCounter> createState() => _CommonCounterState();
}

class _CommonCounterState extends State<CommonCounter> {
  dynamic value;

  @override
  Widget build(BuildContext context) {
    final bool isSimple = widget.topChild == null &&
        widget.bottomChild == null &&
        widget.rightChild == null &&
        widget.leftChild == null;

    final CommonText simpleCounter = CommonText(
      value != null ? value.toString() : widget.initialValue.toString(),
      style: widget.textStyle ??
          CommonTextStyles().h3Style().copyWith(
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                rowMainAxisSize: MainAxisSize.max,
                fontWeight: FontWeight.w500,
                fontColor: widget.valueColor ?? Colors.grey,
              ),
      containerStyle: widget.containerStyle ??
          CommonContainerModel(
            width: widget.counterWidth ?? 0.2,
          ),
      rightChild: CommonTouchable(
        onTap: () {
          setState(() {
            value = (value ?? widget.initialValue) + widget.increaseValue;
            if (widget.minValue != null && value < widget.minValue) {
              value = widget.minValue;
            }
            if (widget.maxValue != null && value > widget.maxValue) {
              value = widget.maxValue;
            }
            widget.onChange?.call(value);
          });
        },
        touchEffect: TouchableEffect(
          type: TouchTypes.scaleAndFade,
          lowerBound: 0.8,
        ),
        child: widget.increaseWidget ??
            Icon(
              widget.increaseIcon ?? Icons.add_box_rounded,
              color: Color(
                widget.maxValue != null &&
                        (value ?? widget.initialValue) >= widget.maxValue
                    ? widget.disableColor ?? 0xFFBDBDBD
                    : widget.enableColor ?? 0xFF5075C3,
              ),
            ),
      ),
      leftChild: CommonTouchable(
        onTap: () {
          setState(() {
            value = (value ?? widget.initialValue) - widget.decreaseValue;
            if (widget.minValue != null && value < widget.minValue) {
              value = widget.minValue;
            }
            if (widget.maxValue != null && value > widget.maxValue) {
              value = widget.maxValue;
            }
            widget.onChange?.call(value);
          });
        },
        touchEffect: TouchableEffect(
          type: TouchTypes.scaleAndFade,
          lowerBound: 0.8,
        ),
        child: widget.decreaseWidget ??
            Icon(
              widget.decreaseIcon ?? Icons.remove,
              color: Color(
                widget.minValue != null &&
                        (value ?? widget.initialValue) <= widget.minValue
                    ? widget.disableColor ?? 0xFFBDBDBD
                    : widget.enableColor ?? 0xFF5075C3,
              ),
            ),
      ),
    );

    final Row counterInRow = Row(
      mainAxisSize: widget.rowMainAxisSize ?? MainAxisSize.min,
      crossAxisAlignment:
          widget.rowCrossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment: widget.rowMainAxisAlignment ?? MainAxisAlignment.start,
      children: <Widget>[
        if (widget.leftChild != null) widget.leftChild!,
        simpleCounter,
        if (widget.rightChild != null) widget.rightChild!,
      ],
    );

    final Column counterInColumn = Column(
      mainAxisSize: widget.columnMainAxisSize ?? MainAxisSize.min,
      crossAxisAlignment:
          widget.columnCrossAxisAlignment ?? CrossAxisAlignment.start,
      mainAxisAlignment:
          widget.columnMainAxisAlignment ?? MainAxisAlignment.start,
      children: <Widget>[
        if (widget.topChild != null) widget.topChild!,
        simpleCounter,
        if (widget.bottomChild != null) widget.bottomChild!,
      ],
    );

    // check if counter is rendered in a column or row.
    final dynamic isColumOrRow =
        widget.topChild == null && widget.bottomChild == null
            ? counterInRow
            : counterInColumn;

    /// check if counter has padding.
    final bool isPadding = widget.paddingRight != null ||
        widget.paddingTop != null ||
        widget.paddingLeft != null ||
        widget.paddingBottom != null;

    // final dynamic counterWithLabel =
    //     widget.leftLabel != null || widget.rightLabel != null
    //         ? Row(
    //             mainAxisAlignment:
    //                 widget.labelRowMainAxisAlignment ?? MainAxisAlignment.start,
    //             crossAxisAlignment: widget.labelRowCrossAxisAlignment ??
    //                 CrossAxisAlignment.start,
    //             children: <Widget>[
    //               if (widget.leftLabel != null) widget.leftLabel!,
    //               simpleCounter,
    //               if (widget.rightLabel != null) widget.rightLabel!,
    //             ],
    //           )
    //         : Column(
    //             crossAxisAlignment: widget.labelColumnCrossAxisAlignment ??
    //                 CrossAxisAlignment.start,
    //             children: <Widget>[
    //               if (widget.topLabel != null) widget.topLabel!,
    //               simpleCounter,
    //               if (widget.bottomLabel != null) widget.bottomLabel!,
    //             ],
    //           );

    // final bool withLabel = widget.leftLabel != null ||
    //     widget.rightLabel != null ||
    //     widget.bottomChild != null ||
    //     widget.topChild != null;

    /// add padding to the counter
    final Padding counterWithPadding = Padding(
      padding: EdgeInsets.only(
        right: widget.paddingRight ?? 0.0,
        top: widget.paddingTop ?? 0.0,
        left: widget.paddingLeft ?? 0.0,
        bottom: widget.paddingBottom ?? 0.0,
      ),
      child: isSimple ? simpleCounter : isColumOrRow,
    );

    return isSimple
        ? simpleCounter
        : isPadding
            ? counterWithPadding
            : isColumOrRow;
  }
}

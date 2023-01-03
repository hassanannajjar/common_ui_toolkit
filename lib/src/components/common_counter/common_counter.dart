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

  @override
  State<CommonCounter> createState() => _CommonCounterState();
}

class _CommonCounterState extends State<CommonCounter> {
  dynamic value;

  @override
  Widget build(BuildContext context) {
    return CommonText(
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
  }
}

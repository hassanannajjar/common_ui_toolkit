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

  final num? initialValue;
  final num? minValue;
  final num? maxValue;
  final num? increaseValue;
  final num? decreaseValue;

  final Function(num value)? onChange;

  final CommonTextModel? textStyle;

  final CommonContainerModel? containerStyle;

  final Widget? decreaseWidget;
  final Widget? increaseWidget;

  final double? counterWidth;

  final dynamic valueColor;
  final dynamic disableColor;
  final dynamic enableColor;

  final IconData? increaseIcon;
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

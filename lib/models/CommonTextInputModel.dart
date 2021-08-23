import 'package:common_ui_toolkit/index.dart';
import 'package:common_ui_toolkit/models/CommonIcon.dart';
import 'package:flutter/services.dart';

class CommonTextInputModel {
  /// Sizes
  double? borderWidth;
  double? fontSize;
  double? radius;
  double? contentPadding;
  double? contentPaddingTop;
  double? contentPaddingBottom;
  double? contentPaddingRight;
  double? contentPaddingLeft;
  double? contentPaddingVertical;
  double? contentPaddingHorizontal;
  double? prefixMinWidth;
  double? prefixMinHeight;
  double? prefixMaxWidth;
  double? prefixMaxHeight;
  double? suffixMinWidth;
  double? suffixMinHeight;
  double? suffixMaxWidth;
  double? suffixMaxHeight;
  double? cursorHeight;
  double? cursorWidth;

  // Colors
  int? textColor;
  int? disabledColor;
  int? errorColor;
  int? focusBorderColor;
  int? enabledBorderColor;
  int? disabledBorderColor;
  int? errorBorderColor;
  int? hintColor;
  int? fillColor;
  int? cursorColor;

  // Lengths
  int? maxLength;
  int? minLength;
  int? minLines;
  int? maxLines;

  // Widgets
  Widget? prefixWidget;
  Widget? suffixWidget;
  Widget? prefix;
  Widget? suffix;
  Widget? counterWidget;

  // If you pass prefixWidget then prefixIcon is ignored.
  // Icons
  CommonIcon? prefixIcon;
  CommonIcon? suffixIcon;

  FocusNode? foucsNode;
  int? fontWeight;

  String? hint;
  String? fontFamily;
  String? text;
  String? prefixText;
  String? suffixText;
  String? counterText;
  String? semanticCounterText;

  bool? isRequired;
  bool? withBorderSide;
  bool? underlined;
  bool? isCollapsed;
  bool? readOnly;
  bool? obscureText;
  bool? enabled;
  bool? showCursor;
  // This is a hack to make the text input verified when user finishs typing the right crospondign content based on input type
  bool? withInputVerification;

  TextInputType? textInputType;
  TextAlign? textAlign;
  TextInputAction? textInputAction;
  TextStyle? textStyle;
  TextStyle? hintStyle;
  TextStyle? prefixStyle;
  TextStyle? suffixStyle;
  TextStyle? counterStyle;
  // ex: RegExp(r'^\d*')
  Pattern? textInputPattern;
  List<TextInputFormatter>? textInputFormatters;
  InputDecoration? inputDecoration;
  Radius? cursorRadius;

  CommonTextInputModel({
    this.hint,
    // types: (EMAIL_INPUT_TYPE, TEXT_INPUT_TYPE , NUMBER_INPUT_TYPE, PASSWORD_INPUT_TYPE)
    this.textInputType,
    this.isRequired = false,
    this.withBorderSide = true,
    this.underlined = false,
    this.isCollapsed = false,
    this.readOnly = false,
    this.obscureText = false,
    this.showCursor = true,
    this.enabled = true,
    this.minLength = 6,
    this.maxLength = 100,
    this.fillColor = TRANSPARENT_COLOR,
    this.cursorColor = PR_COLOR,
    this.foucsNode,
    this.maxLines,
    this.prefixText,
    this.suffixText,
    this.counterText = '',
    this.semanticCounterText,
    this.prefix,
    this.suffix,
    this.minLines,
    this.cursorRadius,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.prefixMinWidth = 0.0,
    this.prefixMinHeight = 0.0,
    this.prefixMaxWidth = 0.0,
    this.prefixMaxHeight = 0.0,
    this.suffixMinWidth = 0.0,
    this.suffixMinHeight = 0.0,
    this.suffixMaxWidth = 0.0,
    this.suffixMaxHeight = 0.0,
    this.borderWidth = 1.0,
    this.radius = 24.0,
    this.hintColor = GREY_COLOR,
    this.disabledColor = GREY_COLOR,
    this.focusBorderColor = GREY_COLOR,
    this.enabledBorderColor = GREY_COLOR,
    this.disabledBorderColor = GREY_COLOR,
    this.errorBorderColor = GREY_COLOR,
    this.errorColor = RED_COLOR,
    this.textColor = BLACK_COLOR,
    this.textAlign = TextAlign.start,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.contentPadding = 15.0,
    this.contentPaddingTop,
    this.contentPaddingBottom,
    this.contentPaddingRight,
    this.contentPaddingLeft,
    this.contentPaddingVertical,
    this.contentPaddingHorizontal,
    this.textInputAction,
    this.textStyle,
    this.hintStyle,
    this.prefixStyle,
    this.suffixStyle,
    this.counterStyle,
    this.textInputPattern,
    this.inputDecoration,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.counterWidget,
    this.prefixIcon,
    this.suffixIcon,
  });
}

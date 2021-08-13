import 'package:common_ui_toolkit/index.dart';
import 'package:flutter/services.dart';

class CommonTextInputModel {
  /// Sizes
  double? prefixIconWidth;
  double? prefixIconHight;
  double? suffixIconWidth;
  double? suffixIconHight;
  double? underlineThikness;
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

  // Colors
  int? textColor;
  int? prefixIconColor;
  int? suffixIconColor;
  int? underlineColor;
  int? disabledColor;
  int? focusBorderColor;
  int? hintColor;
  int? fillColor;

  // Lengths
  int? maxLength;
  int? minLength;
  int? minLines;
  int? maxLines;

  FocusNode? foucsNode;
  int? fontWeight;

  String? hint;
  String? fontFamily;
  String? prefixIcon;

  bool? isRequired;
  bool? withBorderSide;
  bool? underlined;
  bool? isCollapsed;
  bool? readOnly;
  bool? obscureText;
  bool? enabled;
  // This is a hack to make the text input verified when user finishs typing the right crospondign content based on input type
  bool? withInputVerification;

  TextInputType? textInputType;
  TextAlign? textAlign;
  TextInputAction? textInputAction;
  TextStyle? textStyle;
  TextStyle? hintStyle;
  // ex: RegExp(r'^\d*')
  Pattern? textInputPattern;
  List<TextInputFormatter>? textInputFormatters;
  InputDecoration? inputDecoration;

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
    this.enabled = true,
    this.minLength = 6,
    this.maxLength = 100,
    // ex: (prefixIcon || suffixIcon) = Icons.done ( runtimeType: TypeIconData)
    //      (prefixIcon || suffixIcon) = assets/icons/done.svg (runtimeType: String)
    this.prefixIcon,
    this.fillColor = TRANSPARENT_COLOR,
    this.foucsNode,
    this.suffixIconColor = BLACK_COLOR,
    this.underlineColor = BLACK_COLOR,
    this.prefixIconColor = BLACK_COLOR,
    this.suffixIconHight = 10,
    this.suffixIconWidth = 10,
    this.prefixIconHight = 40,
    this.prefixIconWidth = 40,
    this.underlineThikness = 3.0,
    this.borderWidth = 1.0,
    this.radius = 24.0,
    this.hintColor = GREY_COLOR,
    this.disabledColor = GREY_COLOR,
    this.focusBorderColor = GREY_COLOR,
    this.textColor = BLACK_COLOR,
    this.textAlign = TextAlign.start,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.contentPadding,
    this.contentPaddingTop,
    this.contentPaddingBottom,
    this.contentPaddingRight,
    this.contentPaddingLeft,
    this.contentPaddingVertical = 15.0,
    this.contentPaddingHorizontal = 15.0,
    this.textInputAction,
    this.textStyle,
    this.hintStyle,
    this.textInputPattern,
    this.inputDecoration,
  });
}

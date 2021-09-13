import 'package:flutter/services.dart';

import 'package:common_ui_toolkit/index.dart';
import 'package:common_ui_toolkit/models/CommonIcon.dart';

class CommonTextInputModel {
  ///
  /// border width
  ///
  double? borderWidth;

  ///
  /// fontSize
  ///
  double? fontSize;

  ///
  /// radius
  ///
  double? radius;

  ///
  /// contentPadding from all sides
  ///
  double? contentPadding;
  double? contentPaddingTop;
  double? contentPaddingBottom;
  double? contentPaddingRight;
  double? contentPaddingLeft;
  double? contentPaddingVertical;
  double? contentPaddingHorizontal;

  ///
  /// prefix & suffix min & max width & height
  ///
  double? prefixMinWidth;
  double? prefixMinHeight;
  double? prefixMaxWidth;
  double? prefixMaxHeight;
  double? suffixMinWidth;
  double? suffixMinHeight;
  double? suffixMaxWidth;
  double? suffixMaxHeight;

  ///
  /// cursor width and height
  ///
  double? cursorHeight;
  double? cursorWidth;

  /// Colors
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

  /// Lengths
  int? maxLength;
  int? minLength;
  int? minLines;
  int? maxLines;

  /// Widgets
  Widget? prefixWidget;
  Widget? suffixWidget;
  Widget? prefix;
  Widget? suffix;
  Widget? counterWidget;

  /// If you pass prefixWidget then prefixIcon is ignored.
  /// prefix and suffix icons
  CommonIcon? prefixIcon;
  CommonIcon? suffixIcon;

  ///
  /// focus node
  ///
  FocusNode? foucsNode;

  ///
  /// font weight
  ///
  int? fontWeight;

  ///
  /// hint
  ///
  String? hint;

  ///
  /// font family
  ///
  String? fontFamily;

  ///
  /// text
  ///
  String? text;

  ///
  /// prefix and suffix texts
  ///
  String? prefixText;
  String? suffixText;

  ///
  /// counter text
  ///
  String? counterText;

  ///
  /// semantic counter text
  ///
  String? semanticCounterText;

  ///
  /// is required
  ///
  bool? isRequired;

  ///
  /// with border side
  ///
  bool? withBorderSide;

  ///
  /// underlined
  ///
  bool? underlined;

  ///
  /// is collapsed
  ///
  bool? isCollapsed;

  ///
  /// read only
  ///
  bool? readOnly;

  ///
  /// obscure text
  ///
  bool? obscureText;

  ///
  /// enabled
  ///
  bool? enabled;

  ///
  /// show cursor
  ///
  bool? showCursor;

  // This is a hack to make the text input verified when user finishs typing the right crospondign content based on input type
  bool? withInputVerification;

  // types: (EMAIL_INPUT_TYPE, TEXT_INPUT_TYPE , NUMBER_INPUT_TYPE, PASSWORD_INPUT_TYPE)
  TextInputType? textInputType;

  ///
  /// text align
  ///
  TextAlign? textAlign;

  ///
  /// text input action
  ///
  TextInputAction? textInputAction;

  ///
  /// text style
  ///
  TextStyle? textStyle;

  ///
  /// hint style
  ///
  TextStyle? hintStyle;

  ///
  /// prefix style
  ///
  TextStyle? prefixStyle;

  ///
  /// suffix style
  ///
  TextStyle? suffixStyle;

  ///
  /// counter style
  ///
  TextStyle? counterStyle;

  ///
  /// ex: RegExp(r'^\d*')
  /// text input pattern
  ///
  Pattern? textInputPattern;

  ///
  /// text input formatters
  ///
  List<TextInputFormatter>? textInputFormatters;

  ///
  /// input decoration
  ///
  InputDecoration? inputDecoration;

  ///
  /// cursor radius
  ///
  Radius? cursorRadius;

  CommonTextInputModel({
    this.hint,
    this.textInputType,
    this.isRequired = false,
    this.withBorderSide = true,
    this.underlined = false,
    this.isCollapsed = false,
    this.readOnly = false,
    this.withInputVerification = false,
    this.obscureText = false,
    this.showCursor = true,
    this.enabled = true,
    this.minLength = 6,
    this.maxLength,
    this.fillColor = COMMON_TRANSPARENT_COLOR,
    this.cursorColor = COMMON_PR_COLOR,
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
    this.hintColor = COMMON_GREY_COLOR,
    this.disabledColor = COMMON_GREY_COLOR,
    this.focusBorderColor = COMMON_GREY_COLOR,
    this.enabledBorderColor = COMMON_GREY_COLOR,
    this.disabledBorderColor = COMMON_GREY_COLOR,
    this.errorBorderColor = COMMON_GREY_COLOR,
    this.errorColor = COMMON_RED_COLOR,
    this.textColor = COMMON_BLACK_COLOR,
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
    this.textInputFormatters,
  });

  CommonTextInputModel copyWith({
    double? borderWidth,
    double? fontSize,
    double? radius,
    double? contentPadding,
    double? contentPaddingTop,
    double? contentPaddingBottom,
    double? contentPaddingRight,
    double? contentPaddingLeft,
    double? contentPaddingVertical,
    double? contentPaddingHorizontal,
    double? prefixMinWidth,
    double? prefixMinHeight,
    double? prefixMaxWidth,
    double? prefixMaxHeight,
    double? suffixMinWidth,
    double? suffixMinHeight,
    double? suffixMaxWidth,
    double? suffixMaxHeight,
    double? cursorHeight,
    double? cursorWidth,
    int? textColor,
    int? disabledColor,
    int? errorColor,
    int? focusBorderColor,
    int? enabledBorderColor,
    int? disabledBorderColor,
    int? errorBorderColor,
    int? hintColor,
    int? fillColor,
    int? cursorColor,
    int? maxLength,
    int? minLength,
    int? minLines,
    int? maxLines,
    Widget? prefixWidget,
    Widget? suffixWidget,
    Widget? prefix,
    Widget? suffix,
    Widget? counterWidget,
    CommonIcon? prefixIcon,
    CommonIcon? suffixIcon,
    FocusNode? foucsNode,
    int? fontWeight,
    String? hint,
    String? fontFamily,
    String? text,
    String? prefixText,
    String? suffixText,
    String? counterText,
    String? semanticCounterText,
    bool? isRequired,
    bool? withBorderSide,
    bool? underlined,
    bool? isCollapsed,
    bool? readOnly,
    bool? obscureText,
    bool? enabled,
    bool? showCursor,
    bool? withInputVerification,
    TextInputType? textInputType,
    TextAlign? textAlign,
    TextInputAction? textInputAction,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    TextStyle? prefixStyle,
    TextStyle? suffixStyle,
    TextStyle? counterStyle,
    Pattern? textInputPattern,
    List<TextInputFormatter>? textInputFormatters,
    InputDecoration? inputDecoration,
    Radius? cursorRadius,
  }) {
    return CommonTextInputModel(
      borderWidth: borderWidth ?? this.borderWidth,
      fontSize: fontSize ?? this.fontSize,
      radius: radius ?? this.radius,
      contentPadding: contentPadding ?? this.contentPadding,
      contentPaddingTop: contentPaddingTop ?? this.contentPaddingTop,
      contentPaddingBottom: contentPaddingBottom ?? this.contentPaddingBottom,
      contentPaddingRight: contentPaddingRight ?? this.contentPaddingRight,
      contentPaddingLeft: contentPaddingLeft ?? this.contentPaddingLeft,
      contentPaddingVertical:
          contentPaddingVertical ?? this.contentPaddingVertical,
      contentPaddingHorizontal:
          contentPaddingHorizontal ?? this.contentPaddingHorizontal,
      prefixMinWidth: prefixMinWidth ?? this.prefixMinWidth,
      prefixMinHeight: prefixMinHeight ?? this.prefixMinHeight,
      prefixMaxWidth: prefixMaxWidth ?? this.prefixMaxWidth,
      prefixMaxHeight: prefixMaxHeight ?? this.prefixMaxHeight,
      suffixMinWidth: suffixMinWidth ?? this.suffixMinWidth,
      suffixMinHeight: suffixMinHeight ?? this.suffixMinHeight,
      suffixMaxWidth: suffixMaxWidth ?? this.suffixMaxWidth,
      suffixMaxHeight: suffixMaxHeight ?? this.suffixMaxHeight,
      cursorHeight: cursorHeight ?? this.cursorHeight,
      cursorWidth: cursorWidth ?? this.cursorWidth,
      textColor: textColor ?? this.textColor,
      disabledColor: disabledColor ?? this.disabledColor,
      errorColor: errorColor ?? this.errorColor,
      focusBorderColor: focusBorderColor ?? this.focusBorderColor,
      enabledBorderColor: enabledBorderColor ?? this.enabledBorderColor,
      disabledBorderColor: disabledBorderColor ?? this.disabledBorderColor,
      errorBorderColor: errorBorderColor ?? this.errorBorderColor,
      hintColor: hintColor ?? this.hintColor,
      fillColor: fillColor ?? this.fillColor,
      cursorColor: cursorColor ?? this.cursorColor,
      maxLength: maxLength ?? this.maxLength,
      minLength: minLength ?? this.minLength,
      minLines: minLines ?? this.minLines,
      maxLines: maxLines ?? this.maxLines,
      prefixWidget: prefixWidget ?? this.prefixWidget,
      suffixWidget: suffixWidget ?? this.suffixWidget,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      counterWidget: counterWidget ?? this.counterWidget,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      foucsNode: foucsNode ?? this.foucsNode,
      fontWeight: fontWeight ?? this.fontWeight,
      hint: hint ?? this.hint,
      fontFamily: fontFamily ?? this.fontFamily,
      text: text ?? this.text,
      prefixText: prefixText ?? this.prefixText,
      suffixText: suffixText ?? this.suffixText,
      counterText: counterText ?? this.counterText,
      semanticCounterText: semanticCounterText ?? this.semanticCounterText,
      isRequired: isRequired ?? this.isRequired,
      withBorderSide: withBorderSide ?? this.withBorderSide,
      underlined: underlined ?? this.underlined,
      isCollapsed: isCollapsed ?? this.isCollapsed,
      readOnly: readOnly ?? this.readOnly,
      obscureText: obscureText ?? this.obscureText,
      enabled: enabled ?? this.enabled,
      showCursor: showCursor ?? this.showCursor,
      withInputVerification:
          withInputVerification ?? this.withInputVerification,
      textInputType: textInputType ?? this.textInputType,
      textAlign: textAlign ?? this.textAlign,
      textInputAction: textInputAction ?? this.textInputAction,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      prefixStyle: prefixStyle ?? this.prefixStyle,
      suffixStyle: suffixStyle ?? this.suffixStyle,
      counterStyle: counterStyle ?? this.counterStyle,
      textInputPattern: textInputPattern ?? this.textInputPattern,
      textInputFormatters: textInputFormatters ?? this.textInputFormatters,
      inputDecoration: inputDecoration ?? this.inputDecoration,
      cursorRadius: cursorRadius ?? this.cursorRadius,
    );
  }
}

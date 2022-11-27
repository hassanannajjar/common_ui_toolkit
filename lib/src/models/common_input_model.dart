import 'package:flutter/services.dart';

import '../../common_ui_toolkit.dart';

class CommonInputModel {
  const CommonInputModel({
    this.hint,
    this.keyboardType,
    this.isRequired = false,
    this.withBorderSide = true,
    this.underlined = false,
    this.isCollapsed = false,
    this.readOnly = false,
    this.withInputVerification = false,
    this.obscureText = false,
    this.showCursor = true,
    this.enabled = true,
    this.autoCorrect = true,
    this.autofocus = false,
    this.minLength = 6,
    this.maxLength,
    this.fillColor = COMMON_TRANSPARENT_COLOR,
    this.cursorColor = COMMON_PR_COLOR,
    this.focusNode,
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
    this.inputPattern,
    this.inputDecoration,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.counterWidget,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputFormatters,
    this.autofillHints,
    this.autoValidateMode,
    this.buildCounter,
    this.enableInteractiveSelection = true,
    this.enableSuggestions = true,
    this.expands = false,
    this.keyboardAppearance,
    this.maxLengthEnforcement,
    this.obscuringCharacter = '•',
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.toolbarOptions,
    this.validator,
    this.scrollPhysics,
    this.labelText,
    this.label,
    this.labelStyle,
    this.floatingLabelAlignment,
    this.floatingLabelBehavior,
    this.floatingLabelStyle,
  });

  ///
  /// border width
  ///
  final double? borderWidth;

  ///
  /// fontSize
  ///
  final double? fontSize;

  ///
  /// radius
  ///
  final double? radius;

  ///
  /// contentPadding from all sides
  ///
  final double? contentPadding;
  final double? contentPaddingTop;
  final double? contentPaddingBottom;
  final double? contentPaddingRight;
  final double? contentPaddingLeft;
  final double? contentPaddingVertical;
  final double? contentPaddingHorizontal;

  ///
  /// prefix & suffix min & max width & height
  ///
  final double? prefixMinWidth;
  final double? prefixMinHeight;
  final double? prefixMaxWidth;
  final double? prefixMaxHeight;
  final double? suffixMinWidth;
  final double? suffixMinHeight;
  final double? suffixMaxWidth;
  final double? suffixMaxHeight;

  ///
  /// cursor width and height
  ///
  final double? cursorHeight;
  final double? cursorWidth;

  /// Colors
  final dynamic textColor;
  final dynamic disabledColor;
  final dynamic errorColor;
  final dynamic focusBorderColor;
  final dynamic enabledBorderColor;
  final dynamic disabledBorderColor;
  final dynamic errorBorderColor;
  final dynamic hintColor;
  final dynamic fillColor;
  final dynamic cursorColor;

  /// Lengths
  final int? maxLength;
  final int? minLength;
  final int? minLines;
  final int? maxLines;

  /// Widgets
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? counterWidget;

  /// If you pass prefixWidget then prefixIcon is ignored.
  /// prefix and suffix icons
  final CommonIcon? prefixIcon;
  final CommonIcon? suffixIcon;

  ///
  /// focus node
  ///
  final FocusNode? focusNode;

  ///
  /// font weight
  ///
  final int? fontWeight;

  ///
  /// hint
  ///
  final String? hint;

  ///
  /// font family
  ///
  final String? fontFamily;

  ///
  /// text
  ///
  final String? text;

  ///
  /// prefix and suffix texts
  ///
  final String? prefixText;
  final String? suffixText;

  ///
  /// counter text
  ///
  final String? counterText;

  ///
  /// semantic counter text
  ///
  final String? semanticCounterText;

  ///
  /// is required
  ///
  final bool? isRequired;

  ///
  /// with border side
  ///
  final bool? withBorderSide;

  ///
  /// underlined
  ///
  final bool? underlined;

  ///
  /// is collapsed
  ///
  final bool? isCollapsed;

  ///
  /// read only
  ///
  final bool? readOnly;

  ///
  /// obscure text
  ///
  final bool? obscureText;

  ///
  /// enabled
  ///
  final bool? enabled;

  ///
  /// show cursor
  ///
  final bool? showCursor;

  ///
  /// show cursor
  ///
  final bool? autoCorrect;

  // This is a hack to make the text input verified when user finish typing the right cross content based on input type
  final bool? withInputVerification;

  // types: (EMAIL_INPUT_TYPE, TEXT_INPUT_TYPE , NUMBER_INPUT_TYPE, PASSWORD_INPUT_TYPE)
  final TextInputType? keyboardType;

  ///
  /// text align
  ///
  final TextAlign? textAlign;

  ///
  /// text input action
  ///
  final TextInputAction? textInputAction;

  ///
  /// text style
  ///
  final TextStyle? textStyle;

  ///
  /// hint style
  ///
  final TextStyle? hintStyle;

  ///
  /// prefix style
  ///
  final TextStyle? prefixStyle;

  ///
  /// suffix style
  ///
  final TextStyle? suffixStyle;

  ///
  /// counter style
  ///
  final TextStyle? counterStyle;

  ///
  /// ex: RegExp(r'^\d*')
  /// text input pattern
  ///
  final Pattern? inputPattern;

  ///
  /// text input formatters
  ///
  final List<TextInputFormatter>? textInputFormatters;

  ///
  /// input decoration
  ///
  final InputDecoration? inputDecoration;

  ///
  /// cursor radius
  ///
  final Radius? cursorRadius;

  ///
  /// auto fill hints
  ///
  final Iterable<String>? autofillHints;

  ///
  /// auto focus
  ///
  final bool? autofocus;

  ///
  /// auto validate mode
  ///
  final AutovalidateMode? autoValidateMode;

  ///
  /// build counter
  ///
  final InputCounterWidgetBuilder? buildCounter;

  ///
  /// enable interactive selection
  ///
  final bool? enableInteractiveSelection;

  ///
  /// enable suggestions
  ///
  final bool? enableSuggestions;

  ///
  /// expands
  ///
  final bool? expands;

  ///
  /// obscuring Character
  ///
  final String obscuringCharacter;

  ///
  /// keyboard appearance
  ///
  final Brightness? keyboardAppearance;

  ///
  /// scroll padding
  ///
  final EdgeInsets scrollPadding;

  ///
  /// smart dashes type
  ///
  final SmartDashesType? smartDashesType;

  ///
  /// smart quotes type
  ///
  final SmartQuotesType? smartQuotesType;

  ///
  /// strut style
  ///
  final StrutStyle? strutStyle;

  ///
  /// text align vertical
  ///
  final TextAlignVertical? textAlignVertical;

  ///
  /// text align vertical
  ///
  final TextCapitalization textCapitalization;

  ///
  /// text direction
  ///
  final TextDirection? textDirection;

  ///
  /// toolbar options
  ///
  final ToolbarOptions? toolbarOptions;

  ///
  /// form field validator
  ///
  final FormFieldValidator<String>? validator;

  ///
  /// max length enforcement
  ///
  final MaxLengthEnforcement? maxLengthEnforcement;

  final ScrollPhysics? scrollPhysics;

  final String? labelText;

  final Widget? label;

  final TextStyle? labelStyle;

  final FloatingLabelAlignment? floatingLabelAlignment;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final TextStyle? floatingLabelStyle;

  CommonInputModel copyWith({
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
    dynamic textColor,
    dynamic disabledColor,
    dynamic errorColor,
    dynamic focusBorderColor,
    dynamic enabledBorderColor,
    dynamic disabledBorderColor,
    dynamic errorBorderColor,
    dynamic hintColor,
    dynamic fillColor,
    dynamic cursorColor,
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
    FocusNode? focusNode,
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
    bool? autoCorrect,
    bool? withInputVerification,
    TextInputType? keyboardType,
    TextAlign? textAlign,
    TextInputAction? textInputAction,
    TextStyle? textStyle,
    TextStyle? hintStyle,
    TextStyle? prefixStyle,
    TextStyle? suffixStyle,
    TextStyle? counterStyle,
    Pattern? inputPattern,
    List<TextInputFormatter>? textInputFormatters,
    InputDecoration? inputDecoration,
    Radius? cursorRadius,
    Iterable<String>? autofillHints,
    bool? autofocus,
    AutovalidateMode? autoValidateMode,
    InputCounterWidgetBuilder? buildCounter,
    bool? enableInteractiveSelection,
    bool? enableSuggestions,
    bool? expands,
    String? obscuringCharacter,
    Brightness? keyboardAppearance,
    EdgeInsets? scrollPadding,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    StrutStyle? strutStyle,
    TextAlignVertical? textAlignVertical,
    TextCapitalization? textCapitalization,
    TextDirection? textDirection,
    ToolbarOptions? toolbarOptions,
    FormFieldValidator<String>? validator,
    MaxLengthEnforcement? maxLengthEnforcement,
    ScrollPhysics? scrollPhysics,
    String? labelText,
    Widget? label,
    TextStyle? labelStyle,
    FloatingLabelAlignment? floatingLabelAlignment,
    FloatingLabelBehavior? floatingLabelBehavior,
    TextStyle? floatingLabelStyle,
  }) {
    return CommonInputModel(
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
      focusNode: focusNode ?? this.focusNode,
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
      autoCorrect: autoCorrect ?? this.autoCorrect,
      withInputVerification:
          withInputVerification ?? this.withInputVerification,
      keyboardType: keyboardType ?? this.keyboardType,
      textAlign: textAlign ?? this.textAlign,
      textInputAction: textInputAction ?? this.textInputAction,
      textStyle: textStyle ?? this.textStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      prefixStyle: prefixStyle ?? this.prefixStyle,
      suffixStyle: suffixStyle ?? this.suffixStyle,
      counterStyle: counterStyle ?? this.counterStyle,
      inputPattern: inputPattern ?? this.inputPattern,
      textInputFormatters: textInputFormatters ?? this.textInputFormatters,
      inputDecoration: inputDecoration ?? this.inputDecoration,
      cursorRadius: cursorRadius ?? this.cursorRadius,
      autofillHints: autofillHints ?? this.autofillHints,
      autofocus: autofocus ?? this.autofocus,
      autoValidateMode: autoValidateMode ?? this.autoValidateMode,
      buildCounter: buildCounter ?? this.buildCounter,
      enableInteractiveSelection:
          enableInteractiveSelection ?? this.enableInteractiveSelection,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      expands: expands ?? this.expands,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      textDirection: textDirection ?? this.textDirection,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      validator: validator ?? this.validator,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
      scrollPhysics: scrollPhysics ?? this.scrollPhysics,
      labelText: labelText ?? this.labelText,
      label: label ?? this.label,
      labelStyle: labelStyle ?? this.labelStyle,
      floatingLabelAlignment:
          floatingLabelAlignment ?? this.floatingLabelAlignment,
      floatingLabelBehavior:
          floatingLabelBehavior ?? this.floatingLabelBehavior,
      floatingLabelStyle: floatingLabelStyle ?? this.floatingLabelStyle,
    );
  }
}

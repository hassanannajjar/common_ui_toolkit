import 'package:flutter/services.dart';

import '../common_ui_toolkit.dart';

class CommonTextInputModel {
  CommonTextInputModel({
    this.key,
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
    this.textInputPattern,
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
    this.initialValue,
    this.keyboardAppearance,
    this.maxLengthEnforcement,
    this.obscuringCharacter = '•',
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.scrollController,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.selectionControls,
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.toolbarOptions,
    this.validator,
  });

  ///
  /// border width
  ///
  double? borderWidth;

  ///
  /// border width
  ///
  Key? key;

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
  dynamic textColor;
  dynamic disabledColor;
  dynamic errorColor;
  dynamic focusBorderColor;
  dynamic enabledBorderColor;
  dynamic disabledBorderColor;
  dynamic errorBorderColor;
  dynamic hintColor;
  dynamic fillColor;
  dynamic cursorColor;

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
  FocusNode? focusNode;

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

  ///
  /// show cursor
  ///
  bool? autoCorrect;

  // This is a hack to make the text input verified when user finish typing the right cross content based on input type
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

  ///
  /// auto fill hints
  ///
  Iterable<String>? autofillHints;

  ///
  /// auto focus
  ///
  bool? autofocus;

  ///
  /// auto validate mode
  ///
  AutovalidateMode? autoValidateMode;

  ///
  /// build counter
  ///
  InputCounterWidgetBuilder? buildCounter;

  ///
  /// enable interactive selection
  ///
  bool? enableInteractiveSelection;

  ///
  /// enable suggestions
  ///
  bool? enableSuggestions;

  ///
  /// expands
  ///
  bool? expands;

  ///
  /// initial value
  ///
  String? initialValue;

  ///
  /// obscuring Character
  ///
  String obscuringCharacter;

  ///
  /// keyboard appearance
  ///
  Brightness? keyboardAppearance;

  ///
  /// on editing complete
  ///
  VoidCallback? onEditingComplete;

  ///
  /// on field submitted
  ///
  ValueChanged<String>? onFieldSubmitted;

  ///
  /// on saved
  ///
  FormFieldSetter<String>? onSaved;

  ///
  /// on tap
  ///
  GestureTapCallback? onTap;

  ///
  /// scroll controller
  ///
  ScrollController? scrollController;

  ///
  /// scroll padding
  ///
  EdgeInsets scrollPadding;

  ///
  /// selection controls
  ///
  TextSelectionControls? selectionControls;

  ///
  /// smart dashes type
  ///
  SmartDashesType? smartDashesType;

  ///
  /// smart quotes type
  ///
  SmartQuotesType? smartQuotesType;

  ///
  /// strut style
  ///
  StrutStyle? strutStyle;

  ///
  /// text align vertical
  ///
  TextAlignVertical? textAlignVertical;

  ///
  /// text align vertical
  ///
  TextCapitalization textCapitalization;

  ///
  /// text direction
  ///
  TextDirection? textDirection;

  ///
  /// toolbar options
  ///
  ToolbarOptions? toolbarOptions;

  ///
  /// form field validator
  ///
  FormFieldValidator<String>? validator;

  ///
  /// max length enforcement
  ///
  MaxLengthEnforcement? maxLengthEnforcement;

  CommonTextInputModel copyWith({
    double? borderWidth,
    Key? key,
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
    Iterable<String>? autofillHints,
    bool? autofocus,
    AutovalidateMode? autoValidateMode,
    InputCounterWidgetBuilder? buildCounter,
    bool? enableInteractiveSelection,
    bool? enableSuggestions,
    bool? expands,
    String? initialValue,
    String? obscuringCharacter,
    Brightness? keyboardAppearance,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
    GestureTapCallback? onTap,
    ScrollController? scrollController,
    EdgeInsets? scrollPadding,
    TextSelectionControls? selectionControls,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    StrutStyle? strutStyle,
    TextAlignVertical? textAlignVertical,
    TextCapitalization? textCapitalization,
    TextDirection? textDirection,
    ToolbarOptions? toolbarOptions,
    FormFieldValidator<String>? validator,
    MaxLengthEnforcement? maxLengthEnforcement,
  }) {
    return CommonTextInputModel(
      borderWidth: borderWidth ?? this.borderWidth,
      key: key ?? this.key,
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
      autofillHints: autofillHints ?? this.autofillHints,
      autofocus: autofocus ?? this.autofocus,
      autoValidateMode: autoValidateMode ?? this.autoValidateMode,
      buildCounter: buildCounter ?? this.buildCounter,
      enableInteractiveSelection:
          enableInteractiveSelection ?? this.enableInteractiveSelection,
      enableSuggestions: enableSuggestions ?? this.enableSuggestions,
      expands: expands ?? this.expands,
      initialValue: initialValue ?? this.initialValue,
      obscuringCharacter: obscuringCharacter ?? this.obscuringCharacter,
      keyboardAppearance: keyboardAppearance ?? this.keyboardAppearance,
      onEditingComplete: onEditingComplete ?? this.onEditingComplete,
      onFieldSubmitted: onFieldSubmitted ?? this.onFieldSubmitted,
      onSaved: onSaved ?? this.onSaved,
      onTap: onTap ?? this.onTap,
      scrollController: scrollController ?? this.scrollController,
      scrollPadding: scrollPadding ?? this.scrollPadding,
      selectionControls: selectionControls ?? this.selectionControls,
      smartDashesType: smartDashesType ?? this.smartDashesType,
      smartQuotesType: smartQuotesType ?? this.smartQuotesType,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlignVertical: textAlignVertical ?? this.textAlignVertical,
      textCapitalization: textCapitalization ?? this.textCapitalization,
      textDirection: textDirection ?? this.textDirection,
      toolbarOptions: toolbarOptions ?? this.toolbarOptions,
      validator: validator ?? this.validator,
      maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
    );
  }
}

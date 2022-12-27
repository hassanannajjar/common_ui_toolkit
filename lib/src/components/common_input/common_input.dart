import 'package:flutter/services.dart';

import '../../../common_ui_toolkit.dart';

const CommonInputModel _defaultInputModel = CommonInputModel();

class CommonInput extends StatelessWidget {
  const CommonInput({
    this.style,
    this.onChanged,
    this.controller,
    this.onTap,
    this.margin,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.marginVertical,
    this.marginHorizontal,
    this.height,
    this.width,
    this.hint,
    this.hintMaxLines,
    this.hintTextDirection,
    this.keyboardType,
    this.isCollapsed,
    this.readOnly = false,
    this.withInputVerification,
    this.obscureText,
    this.showCursor,
    this.enabled = true,
    this.autoCorrect,
    this.autofocus,
    this.maxLength,
    this.fillColor,
    this.cursorColor,
    this.focusNode,
    this.maxLines,
    this.minLines,
    this.counterText,
    this.semanticCounterText,
    this.prefixOnFocus,
    this.suffixOnFocus,
    this.prefix,
    this.suffix,
    this.prefixIconColor,
    this.prefixConstraints,
    this.prefixStyle,
    this.prefixTextOnFocus,
    this.suffixColor,
    this.suffixConstraints,
    this.suffixStyle,
    this.suffixTextOnFocus,
    this.cursorRadius,
    this.cursorHeight,
    this.cursorWidth,
    this.borderWidth,
    this.borderRadius,
    this.hintColor,
    this.disabledColor,
    this.focusBorderColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.errorBorderColor,
    this.textColor,
    this.textAlign,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.textInputAction,
    this.textStyle,
    this.hintStyle,
    this.counterStyle,
    this.inputPattern,
    this.inputDecoration,
    this.text,
    this.counterWidget,
    this.textInputFormatters,
    this.autofillHints,
    this.autoValidateMode,
    this.buildCounter,
    this.enableInteractiveSelection,
    this.enableSuggestions,
    this.expands,
    this.value = '',
    this.keyboardAppearance,
    this.maxLengthEnforcement,
    this.obscuringCharacter,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.scrollController,
    this.scrollPadding,
    this.selectionControls,
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.textAlignVertical,
    this.textCapitalization,
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
    this.contentPadding,
    this.contentPaddingTop,
    this.contentPaddingBottom,
    this.contentPaddingRight,
    this.contentPaddingLeft,
    this.contentPaddingVertical,
    this.contentPaddingHorizontal,
    this.errorMaxLines,
    this.alignLabelWithHint,
    this.outIcon,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    this.disabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.errorStyle,
    this.errorText,
    this.helperText,
    this.helperStyle,
    this.helperMaxLines,
    this.borderType,
    this.borderColor,
    this.constraints,
    this.focusColor,
    this.hoverColor,
    this.iconColor,
    Key? key,
  }) : super(
          key: key,
        );

  ///
  /// onChanged
  ///
  final Function(String)? onChanged;

  ///
  /// onTap
  ///
  final Function()? onTap;

  ///
  /// on editing complete
  ///
  final Function()? onEditingComplete;

  ///
  /// on field submitted
  ///
  final Function(String)? onFieldSubmitted;

  ///
  /// on saved
  ///
  final Function(String?)? onSaved;

  final CommonInputModel? style;
  final TextEditingController? controller;

  ///
  /// border width
  ///
  final double? borderWidth;

  ///
  /// fontSize
  ///
  final double? fontSize;

  ///
  /// borderRadius
  ///
  final double? borderRadius;

  ///
  /// cursor width and height
  ///
  final double? cursorHeight;
  final double? cursorWidth;

  /// Colors
  final dynamic textColor;
  final dynamic disabledColor;
  final dynamic focusBorderColor;
  final dynamic enabledBorderColor;
  final dynamic disabledBorderColor;
  final dynamic errorBorderColor;
  final dynamic hintColor;
  final dynamic fillColor;
  final dynamic cursorColor;

  /// Lengths
  final int? maxLength;
  final int? minLines;
  final int? maxLines;

  /// Widgets
  /// this prefix just when focus the input
  final Widget? prefixOnFocus;

  /// this suffix just when focus the input
  final Widget? suffixOnFocus;

  final Widget? prefix;
  final Widget? suffix;
  final Widget? counterWidget;

  final Color? prefixIconColor;
  final BoxConstraints? prefixConstraints;
  final TextStyle? prefixStyle;
  final String? prefixTextOnFocus;

  final Color? suffixColor;
  final BoxConstraints? suffixConstraints;
  final TextStyle? suffixStyle;
  final String? suffixTextOnFocus;

  final BoxConstraints? constraints;

  ///
  /// focus node
  ///
  final FocusNode? focusNode;

  ///
  /// font weight
  ///
  final FontWeight? fontWeight;

  ///
  /// hint
  ///
  final String? hint;

  final int? hintMaxLines;

  final TextDirection? hintTextDirection;

  ///
  /// font family
  ///
  final String? fontFamily;

  ///
  /// text
  ///
  final String? text;

  ///
  /// counter text
  ///
  final String? counterText;

  ///
  /// semantic counter text
  ///
  final String? semanticCounterText;

  ///
  /// is collapsed
  ///
  final bool? isCollapsed;

  ///
  /// read only
  ///
  final bool readOnly;

  ///
  /// obscure text
  ///
  final bool? obscureText;

  ///
  /// enabled
  ///
  final bool enabled;

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
  /// initial value
  ///
  final String? value;

  ///
  /// obscuring Character
  ///
  final String? obscuringCharacter;

  ///
  /// keyboard appearance
  ///
  final Brightness? keyboardAppearance;

  ///
  /// scroll controller
  ///
  final ScrollController? scrollController;

  ///
  /// scroll contentPadding
  ///
  final EdgeInsets? scrollPadding;

  ///
  /// selection controls
  ///
  final TextSelectionControls? selectionControls;

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
  final TextCapitalization? textCapitalization;

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

  // contentPadding
  final double? contentPadding;
  final double? contentPaddingTop;
  final double? contentPaddingBottom;
  final double? contentPaddingRight;
  final double? contentPaddingLeft;

  ///
  /// container contentPadding right and left to be same.
  ///
  final double? contentPaddingVertical;
  final double? contentPaddingHorizontal;

  final int? errorMaxLines;

  final bool? alignLabelWithHint;

  final Widget? outIcon;

  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;

  final TextStyle? errorStyle;
  final String? errorText;
  final String? helperText;
  final TextStyle? helperStyle;
  final int? helperMaxLines;
  final BorderType? borderType;
  final dynamic borderColor;

  ///
  /// margin for all container
  ///
  ///
  final double? margin;

  ///
  /// margin for top container
  ///
  final double? marginTop;

  ///
  /// margin for bottom container
  ///
  final double? marginBottom;

  ///
  /// margin for right container
  ///
  final double? marginRight;

  ///
  /// margin for left container
  ///
  final double? marginLeft;

  ///
  /// margin for (top and bottom|| Vertical)  container
  ///
  final double? marginVertical;

  ///
  /// margin for (right and left || Horizontal) container
  ///
  final double? marginHorizontal;

  final double? height;

  final double? width;

  final Color? focusColor;
  final Color? hoverColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final CommonInputModel currentStyle = style ?? _defaultInputModel;
    final CommonInputModel configModel =
        GLOBAL_CONFIG.inputModel ?? const CommonInputModel();
    final TextEditingController currentController =
        controller ?? TextEditingController(text: value);

    final double currentBorderWidth = borderWidth ??
        currentStyle.borderWidth ??
        configModel.borderWidth ??
        1.0;
    final double? currentFontSize =
        fontSize ?? currentStyle.fontSize ?? configModel.fontSize;
    final double currentBorderRadius = borderRadius ??
        currentStyle.borderRadius ??
        configModel.borderRadius ??
        15.0;
    final double? currentCursorHeight =
        cursorHeight ?? currentStyle.cursorHeight ?? configModel.cursorHeight;
    final double currentCursorWidth = cursorWidth ??
        currentStyle.cursorWidth ??
        configModel.cursorWidth ??
        2.0;
    final dynamic currentTextColor = textColor ??
        currentStyle.textColor ??
        configModel.textColor ??
        COMMON_BLACK_COLOR;
    final dynamic currentDisabledColor = disabledColor ??
        currentStyle.disabledColor ??
        configModel.disabledColor ??
        COMMON_GREY_COLOR;
    final dynamic currentFocusBorderColor = focusBorderColor ??
        currentStyle.focusBorderColor ??
        configModel.focusBorderColor ??
        COMMON_GREY_COLOR;
    final dynamic currentEnabledBorderColor = enabledBorderColor ??
        currentStyle.enabledBorderColor ??
        configModel.enabledBorderColor ??
        COMMON_GREY_COLOR;
    final dynamic currentDisabledBorderColor = disabledBorderColor ??
        currentStyle.disabledBorderColor ??
        configModel.disabledBorderColor ??
        COMMON_GREY_COLOR;
    final dynamic currentErrorBorderColor = errorBorderColor ??
        currentStyle.errorBorderColor ??
        configModel.errorBorderColor ??
        COMMON_RED_COLOR;
    final dynamic currentHintColor = hintColor ??
        currentStyle.hintColor ??
        configModel.hintColor ??
        COMMON_GREY_COLOR;
    final dynamic currentFillColor = fillColor ??
        currentStyle.fillColor ??
        configModel.fillColor ??
        COMMON_TRANSPARENT_COLOR;
    final dynamic currentCursorColor = cursorColor ??
        currentStyle.cursorColor ??
        configModel.cursorColor ??
        COMMON_PR_COLOR;
    final int? currentMaxLength =
        maxLength ?? currentStyle.maxLength ?? configModel.maxLength;
    final int? currentMinLines =
        minLines ?? currentStyle.minLines ?? configModel.minLines;
    final int? currentMaxLines =
        maxLines ?? currentStyle.maxLines ?? configModel.maxLines;
    final Widget? currentCounterWidget = counterWidget ??
        currentStyle.counterWidget ??
        configModel.counterWidget;
    final FocusNode? currentFocusNode =
        focusNode ?? currentStyle.focusNode ?? configModel.focusNode;
    final FontWeight? currentFontWeight =
        fontWeight ?? currentStyle.fontWeight ?? configModel.fontWeight;
    final String? currentHint = hint ?? currentStyle.hint ?? configModel.hint;
    final int? currentHintMaxLines =
        hintMaxLines ?? currentStyle.hintMaxLines ?? configModel.hintMaxLines;
    final TextDirection? currentHintTextDirection = hintTextDirection ??
        currentStyle.hintTextDirection ??
        configModel.hintTextDirection;
    final String? currentFontFamily =
        fontFamily ?? currentStyle.fontFamily ?? configModel.fontFamily;
    final String currentCounterText = counterText ??
        currentStyle.counterText ??
        configModel.counterText ??
        '';
    final String? currentSemanticCounterText = semanticCounterText ??
        currentStyle.semanticCounterText ??
        configModel.semanticCounterText;

    final bool currentIsCollapsed = isCollapsed ??
        currentStyle.isCollapsed ??
        configModel.isCollapsed ??
        false;
    final bool currentObscureText = obscureText ??
        currentStyle.obscureText ??
        configModel.obscureText ??
        false;
    final bool currentShowCursor =
        showCursor ?? currentStyle.showCursor ?? configModel.showCursor ?? true;
    final bool currentAutoCorrect = autoCorrect ??
        currentStyle.autoCorrect ??
        configModel.autoCorrect ??
        true;
    final TextInputType? currentKeyboardType =
        keyboardType ?? currentStyle.keyboardType ?? configModel.keyboardType;
    final TextAlign currentTextAlign = textAlign ??
        currentStyle.textAlign ??
        configModel.textAlign ??
        TextAlign.start;
    final TextInputAction? currentTextInputAction = textInputAction ??
        currentStyle.textInputAction ??
        configModel.textInputAction;
    final TextStyle? currentTextStyle =
        textStyle ?? currentStyle.textStyle ?? configModel.textStyle;
    final TextStyle? currentHintStyle =
        hintStyle ?? currentStyle.hintStyle ?? configModel.hintStyle;
    final TextStyle? currentCounterStyle =
        counterStyle ?? currentStyle.counterStyle ?? configModel.counterStyle;
    final Pattern? currentInputPattern =
        inputPattern ?? currentStyle.inputPattern ?? configModel.inputPattern;
    final List<TextInputFormatter>? currentTextInputFormatters =
        textInputFormatters ??
            currentStyle.textInputFormatters ??
            configModel.textInputFormatters;
    final InputDecoration? currentInputDecoration = inputDecoration ??
        currentStyle.inputDecoration ??
        configModel.inputDecoration;
    final Radius? currentCursorRadius =
        cursorRadius ?? currentStyle.cursorRadius ?? configModel.cursorRadius;
    final Iterable<String>? currentAutofillHints = autofillHints ??
        currentStyle.autofillHints ??
        configModel.autofillHints;
    final bool currentAutofocus =
        autofocus ?? currentStyle.autofocus ?? configModel.autofocus ?? false;
    final AutovalidateMode? currentAutoValidateMode = autoValidateMode ??
        currentStyle.autoValidateMode ??
        configModel.autoValidateMode;
    final InputCounterWidgetBuilder? currentBuildCounter =
        buildCounter ?? currentStyle.buildCounter ?? configModel.buildCounter;
    final bool currentEnableInteractiveSelection = enableInteractiveSelection ??
        currentStyle.enableInteractiveSelection ??
        configModel.enableInteractiveSelection ??
        true;
    final bool currentEnableSuggestions = enableSuggestions ??
        currentStyle.enableSuggestions ??
        configModel.enableSuggestions ??
        true;
    final bool currentExpands =
        expands ?? currentStyle.expands ?? configModel.expands ?? false;
    final String currentObscuringCharacter = obscuringCharacter ??
        currentStyle.obscuringCharacter ??
        configModel.obscuringCharacter ??
        '•';
    final Brightness? currentKeyboardAppearance = keyboardAppearance ??
        currentStyle.keyboardAppearance ??
        configModel.keyboardAppearance;
    final EdgeInsets currentScrollPadding = scrollPadding ??
        currentStyle.scrollPadding ??
        configModel.scrollPadding ??
        const EdgeInsets.all(20.0);
    final SmartDashesType? currentSmartDashesType = smartDashesType ??
        currentStyle.smartDashesType ??
        configModel.smartDashesType;
    final SmartQuotesType? currentSmartQuotesType = smartQuotesType ??
        currentStyle.smartQuotesType ??
        configModel.smartQuotesType;
    final StrutStyle? currentStrutStyle =
        strutStyle ?? currentStyle.strutStyle ?? configModel.strutStyle;
    final TextAlignVertical? currentTextAlignVertical = textAlignVertical ??
        currentStyle.textAlignVertical ??
        configModel.textAlignVertical;
    final TextCapitalization currentTextCapitalization = textCapitalization ??
        currentStyle.textCapitalization ??
        configModel.textCapitalization ??
        TextCapitalization.none;
    final TextDirection? currentTextDirection = textDirection ??
        currentStyle.textDirection ??
        configModel.textDirection;
    final ToolbarOptions? currentToolbarOptions = toolbarOptions ??
        currentStyle.toolbarOptions ??
        configModel.toolbarOptions;
    final FormFieldValidator<String>? currentValidator =
        validator ?? currentStyle.validator ?? configModel.validator;
    final MaxLengthEnforcement? currentMaxLengthEnforcement =
        maxLengthEnforcement ??
            currentStyle.maxLengthEnforcement ??
            configModel.maxLengthEnforcement;
    final ScrollPhysics? currentScrollPhysics = scrollPhysics ??
        currentStyle.scrollPhysics ??
        configModel.scrollPhysics;
    final String? currentLabelText =
        labelText ?? currentStyle.labelText ?? configModel.labelText;
    final Widget? currentLabel =
        label ?? currentStyle.label ?? configModel.label;
    final TextStyle? currentLabelStyle =
        labelStyle ?? currentStyle.labelStyle ?? configModel.labelStyle;
    final FloatingLabelAlignment? currentFloatingLabelAlignment =
        floatingLabelAlignment ??
            currentStyle.floatingLabelAlignment ??
            configModel.floatingLabelAlignment;
    final FloatingLabelBehavior? currentFloatingLabelBehavior =
        floatingLabelBehavior ??
            currentStyle.floatingLabelBehavior ??
            configModel.floatingLabelBehavior;
    final TextStyle? currentFloatingLabelStyle = floatingLabelStyle ??
        currentStyle.floatingLabelStyle ??
        configModel.floatingLabelStyle;
    final double currentContentPadding = contentPadding ??
        currentStyle.contentPadding ??
        configModel.contentPadding ??
        0.015;
    final double? currentContentPaddingTop = contentPaddingTop ??
        currentStyle.contentPaddingTop ??
        configModel.contentPaddingTop;
    final double? currentContentPaddingBottom = contentPaddingBottom ??
        currentStyle.contentPaddingBottom ??
        configModel.contentPaddingBottom;
    final double? currentContentPaddingHorizontal = contentPaddingHorizontal ??
        currentStyle.contentPaddingHorizontal ??
        configModel.contentPaddingHorizontal;
    final double? currentContentPaddingVertical = contentPaddingVertical ??
        currentStyle.contentPaddingVertical ??
        configModel.contentPaddingVertical;
    final bool? currentAlignLabelWithHint = alignLabelWithHint ??
        currentStyle.alignLabelWithHint ??
        configModel.alignLabelWithHint;
    final double? currentContentPaddingRight = contentPaddingRight ??
        currentStyle.contentPaddingRight ??
        configModel.contentPaddingRight;
    final InputBorder? currentBorder =
        border ?? currentStyle.border ?? configModel.border;
    final InputBorder? currentFocusedBorder = focusedBorder ??
        currentStyle.focusedBorder ??
        configModel.focusedBorder;
    final InputBorder? currentEnabledBorder = enabledBorder ??
        currentStyle.enabledBorder ??
        configModel.enabledBorder;
    final InputBorder? currentDisabledBorder = disabledBorder ??
        currentStyle.disabledBorder ??
        configModel.disabledBorder;
    final InputBorder? currentErrorBorder =
        errorBorder ?? currentStyle.errorBorder ?? configModel.errorBorder;
    final InputBorder? currentFocusedErrorBorder = focusedErrorBorder ??
        currentStyle.focusedErrorBorder ??
        configModel.focusedErrorBorder;
    final TextStyle? currentErrorStyle =
        errorStyle ?? currentStyle.errorStyle ?? configModel.errorStyle;
    final String? currentErrorText =
        errorText ?? currentStyle.errorText ?? configModel.errorText;
    final String? currentHelperText =
        helperText ?? currentStyle.helperText ?? configModel.helperText;
    final TextStyle? currentHelperStyle =
        helperStyle ?? currentStyle.helperStyle ?? configModel.helperStyle;
    final int? currentHelperMaxLines = helperMaxLines ??
        currentStyle.helperMaxLines ??
        configModel.helperMaxLines;
    final BorderType? currentBorderType =
        borderType ?? currentStyle.borderType ?? configModel.borderType;
    final dynamic currentBorderColor = borderColor ??
        currentStyle.borderColor ??
        configModel.borderColor ??
        COMMON_BLACK_COLOR;
    final double? currentMargin =
        margin ?? currentStyle.margin ?? configModel.margin;
    final double? currentMarginTop =
        marginTop ?? currentStyle.marginTop ?? configModel.marginTop;
    final double? currentMarginBottom =
        marginBottom ?? currentStyle.marginBottom ?? configModel.marginBottom;
    final double? currentMarginRight =
        marginRight ?? currentStyle.marginRight ?? configModel.marginRight;
    final double? currentMarginLeft =
        marginLeft ?? currentStyle.marginLeft ?? configModel.marginLeft;
    final double? currentMarginVertical = marginVertical ??
        currentStyle.marginVertical ??
        configModel.marginVertical;
    final double? currentMarginHorizontal = marginHorizontal ??
        currentStyle.marginHorizontal ??
        configModel.marginHorizontal;
    final double? currentHeight =
        height ?? currentStyle.height ?? configModel.height;
    final double? currentWidth =
        width ?? currentStyle.width ?? configModel.width;
    final double? currentContentPaddingLeft = contentPaddingLeft ??
        currentStyle.contentPaddingLeft ??
        configModel.contentPaddingLeft;
    final int? currentErrorMaxLines = errorMaxLines ??
        currentStyle.errorMaxLines ??
        configModel.errorMaxLines;

    InputBorder getOutlineInputBorder({
      dynamic color,
    }) {
      return (currentBorderType) == BorderType.none
          ? const UnderlineInputBorder(
              borderSide: BorderSide.none,
            )
          : (currentBorderType) == BorderType.underLine
              ? UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: getColorType(color),
                    width: currentBorderWidth,
                  ),
                )
              : OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(currentBorderRadius),
                  ),
                  borderSide: BorderSide(
                    color: getColorType(color),
                    width: currentBorderWidth,
                  ),
                );
    }

    final TextFormField textFormField = TextFormField(
      onChanged: onChanged?.call,
      onEditingComplete: onEditingComplete?.call,
      onFieldSubmitted: onFieldSubmitted?.call,
      onSaved: onSaved?.call,
      textInputAction: currentTextInputAction,
      textAlign: currentTextAlign,
      focusNode: currentFocusNode,
      readOnly: readOnly,
      style: currentTextStyle ??
          TextStyle(
            color: getColorType(currentTextColor!),
            fontSize: currentFontSize,
            fontFamily: currentFontFamily,
            fontWeight: currentFontWeight,
          ),
      scrollPhysics: currentScrollPhysics,
      minLines: currentMinLines,
      maxLines: currentObscureText ? 1 : currentMaxLines,
      maxLength: currentMaxLength,
      inputFormatters: currentInputPattern != null
          ? <FilteringTextInputFormatter>[
              FilteringTextInputFormatter.allow(currentInputPattern),
            ]
          : currentTextInputFormatters,
      obscureText: currentObscureText,
      keyboardType: currentKeyboardType,
      enabled: enabled,
      cursorHeight: currentCursorHeight,
      cursorWidth: currentCursorWidth,
      showCursor: currentShowCursor,
      cursorColor: getColorType(currentCursorColor!),
      cursorRadius: currentCursorRadius,
      autocorrect: currentAutoCorrect,
      autofillHints: currentAutofillHints,
      autofocus: currentAutofocus,
      autovalidateMode: currentAutoValidateMode,
      buildCounter: currentBuildCounter,
      enableInteractiveSelection: currentEnableInteractiveSelection,
      enableSuggestions: currentEnableSuggestions,
      expands: currentExpands,
      keyboardAppearance: currentKeyboardAppearance,
      maxLengthEnforcement: currentMaxLengthEnforcement,
      obscuringCharacter: currentObscuringCharacter,
      scrollController: scrollController,
      scrollPadding: currentScrollPadding,
      selectionControls: selectionControls,
      smartDashesType: currentSmartDashesType,
      smartQuotesType: currentSmartQuotesType,
      strutStyle: currentStrutStyle,
      textAlignVertical: currentTextAlignVertical,
      textCapitalization: currentTextCapitalization,
      textDirection: currentTextDirection,
      toolbarOptions: currentToolbarOptions,
      validator: currentValidator,
      controller: currentController,
      decoration: currentInputDecoration ??
          InputDecoration(
            labelText: currentLabelText,
            label: currentLabel,
            labelStyle: currentLabelStyle,
            floatingLabelAlignment: currentFloatingLabelAlignment,
            floatingLabelBehavior: currentFloatingLabelBehavior,
            floatingLabelStyle: currentFloatingLabelStyle,
            counterText: currentCounterText,
            counterStyle: currentCounterStyle,
            semanticCounterText: currentSemanticCounterText,
            fillColor: getColorType(currentFillColor!),
            filled: (currentFillColor) != null,
            contentPadding: getContentPaddingEdgeInsets(
              CommonInputModel(
                contentPaddingTop:
                    getResponsiveDeviceHeight(currentContentPaddingTop),
                contentPaddingBottom:
                    getResponsiveDeviceHeight(currentContentPaddingBottom),
                contentPaddingLeft:
                    getResponsiveDeviceWidth(currentContentPaddingLeft),
                contentPaddingRight:
                    getResponsiveDeviceWidth(currentContentPaddingRight),
                contentPaddingHorizontal:
                    getResponsiveDeviceWidth(currentContentPaddingHorizontal),
                contentPaddingVertical:
                    getResponsiveDeviceHeight(currentContentPaddingVertical),
                contentPadding: getResponsiveDeviceWidth(currentContentPadding),
              ),
            ),
            hintText: currentHint,
            hintStyle: currentHintStyle ??
                TextStyle(
                  color: (enabled)
                      ? getColorType(currentHintColor!)
                      : getColorType(currentDisabledColor!),
                  fontFamily: currentFontFamily,
                ),
            hintMaxLines: currentHintMaxLines,
            hintTextDirection: currentHintTextDirection,
            isCollapsed: currentIsCollapsed,
            counter: currentCounterWidget,
            enabled: enabled,
            errorMaxLines: currentErrorMaxLines,
            alignLabelWithHint: currentAlignLabelWithHint,
            icon: outIcon,
            border: currentBorder ??
                getOutlineInputBorder(
                  color: currentBorderColor!,
                ),
            focusedBorder: currentFocusedBorder ??
                getOutlineInputBorder(
                  color: currentFocusBorderColor!,
                ),
            enabledBorder: currentEnabledBorder ??
                getOutlineInputBorder(
                  color: currentEnabledBorderColor!,
                ),
            disabledBorder: currentDisabledBorder ??
                getOutlineInputBorder(
                  color: currentDisabledBorderColor!,
                ),
            errorBorder: currentErrorBorder ??
                getOutlineInputBorder(
                  color: currentErrorBorderColor!,
                ),
            errorStyle: currentErrorStyle,
            errorText: currentErrorText,
            focusedErrorBorder: currentFocusedErrorBorder,
            helperText: currentHelperText,
            helperMaxLines: currentHelperMaxLines,
            helperStyle: currentHelperStyle,
            prefix: prefixOnFocus,
            prefixIcon: prefix,
            prefixIconColor: prefixIconColor,
            prefixIconConstraints: prefixConstraints,
            prefixStyle: prefixStyle,
            prefixText: prefixTextOnFocus,
            suffix: suffixOnFocus,
            suffixIconColor: suffixColor,
            suffixIcon: suffix,
            suffixIconConstraints: suffixConstraints,
            suffixStyle: suffixStyle,
            suffixText: suffixTextOnFocus,
            constraints: constraints,
            focusColor: focusColor,
            hoverColor: hoverColor,
            iconColor: iconColor,
          ),
    );

    final bool withMargin = (currentMarginTop != null ||
        currentMarginBottom != null ||
        currentMarginLeft != null ||
        currentMarginRight != null ||
        currentMarginHorizontal != null ||
        currentMarginVertical != null ||
        currentMargin != null);

    final dynamic simpleInput = onTap != null
        ? Listener(
            behavior: HitTestBehavior.opaque,
            onPointerDown: (PointerDownEvent details) {
              onTap!.call();
            },
            child: textFormField,
          )
        : textFormField;

    final dynamic marginInput = withMargin
        ? Padding(
            padding: getMarginEdgeInsets(
              CommonInputModel(
                marginTop: currentMarginTop,
                marginBottom: currentMarginBottom,
                marginLeft: currentMarginLeft,
                marginRight: currentMarginRight,
                marginHorizontal: currentMarginHorizontal,
                marginVertical: currentMarginVertical,
                margin: currentMargin ?? 0.0,
              ),
            ),
            child: simpleInput,
          )
        : simpleInput;

    return (currentWidth != null || currentHeight != null)
        ? SizedBox(
            width: currentWidth != null ? DEVICE_WIDTH * currentWidth : null,
            height:
                currentHeight != null ? DEVICE_HEIGHT * currentHeight : null,
            child: marginInput,
          )
        : marginInput;
  }
}

enum BorderType {
  none,

  underLine,

  outLine,
}

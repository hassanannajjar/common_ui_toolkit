import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_ui_toolkit.dart';

const CommonInputModel _defaultTextInputModel = CommonInputModel();

class CommonInput extends StatelessWidget {
  const CommonInput({
    this.style,
    this.containerStyle,
    this.onChanged,
    this.controller,
    this.onTap,
    this.hint,
    this.keyboardType,
    this.isRequired,
    this.withBorderSide,
    this.underlined,
    this.isCollapsed,
    this.readOnly,
    this.withInputVerification,
    this.obscureText,
    this.showCursor,
    this.enabled,
    this.autoCorrect,
    this.autofocus,
    this.minLength,
    this.maxLength,
    this.fillColor,
    this.cursorColor,
    this.focusNode,
    this.maxLines,
    this.prefixText,
    this.suffixText,
    this.counterText,
    this.semanticCounterText,
    this.prefix,
    this.suffix,
    this.minLines,
    this.cursorRadius,
    this.cursorHeight,
    this.cursorWidth,
    this.prefixMinWidth,
    this.prefixMinHeight,
    this.prefixMaxWidth,
    this.prefixMaxHeight,
    this.suffixMinWidth,
    this.suffixMinHeight,
    this.suffixMaxWidth,
    this.suffixMaxHeight,
    this.borderWidth,
    this.radius,
    this.hintColor,
    this.disabledColor,
    this.focusBorderColor,
    this.enabledBorderColor,
    this.disabledBorderColor,
    this.errorBorderColor,
    this.errorColor,
    this.textColor,
    this.textAlign,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.contentcontentPadding,
    this.contentcontentPaddingTop,
    this.contentcontentPaddingBottom,
    this.contentcontentPaddingRight,
    this.contentcontentPaddingLeft,
    this.contentcontentPaddingVertical,
    this.contentcontentPaddingHorizontal,
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

    ///
    /// Empty space to inscribe inside the [decoration]. The [child], if any, is
    /// placed inside this contentPadding.
    ///
    /// This contentPadding is in addition to any contentPadding inherent in the [decoration];
    /// see [Decoration.contentPadding].
    ///
    this.contentPadding,
    this.contentPaddingTop,
    this.contentPaddingBottom,
    this.contentPaddingRight,
    this.contentPaddingLeft,
    this.contentPaddingVertical,

    ///
    /// container contentPadding top and bottom to be same.
    ///
    this.contentPaddingHorizontal,
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
  final CommonContainerModel? containerStyle;
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
  /// radius
  ///
  final double? radius;

  ///
  /// contentcontentPadding from all sides
  ///
  final double? contentcontentPadding;
  final double? contentcontentPaddingTop;
  final double? contentcontentPaddingBottom;
  final double? contentcontentPaddingRight;
  final double? contentcontentPaddingLeft;
  final double? contentcontentPaddingVertical;
  final double? contentcontentPaddingHorizontal;

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

  @override
  Widget build(BuildContext context) {
    final CommonInputModel currentStyle = style ?? _defaultTextInputModel;
    final TextEditingController currentController =
        controller ?? TextEditingController(text: value);

    final TextFormField textFormField = TextFormField(
      onChanged: onChanged?.call,
      onEditingComplete: onEditingComplete?.call,
      onFieldSubmitted: onFieldSubmitted?.call,
      onSaved: onSaved?.call,
      textInputAction: textInputAction ?? currentStyle.textInputAction,
      textAlign: textAlign ?? currentStyle.textAlign!,
      focusNode: focusNode ?? currentStyle.focusNode,
      readOnly: readOnly ?? currentStyle.readOnly!,
      style: textStyle ??
          currentStyle.textStyle ??
          TextStyle(
            color: getColorType(textColor ?? currentStyle.textColor!),
            fontSize: fontSize ?? currentStyle.fontSize,
          ),
      scrollPhysics: const BouncingScrollPhysics(),
      minLines: minLines ?? currentStyle.minLines,
      maxLines: (obscureText ?? currentStyle.obscureText!)
          ? 1
          : (maxLines ?? currentStyle.maxLines),
      maxLength: maxLength ?? currentStyle.maxLength,
      inputFormatters: (inputPattern ?? currentStyle.inputPattern) != null
          ? <FilteringTextInputFormatter>[
              FilteringTextInputFormatter.allow(
                  (inputPattern ?? currentStyle.inputPattern!)),
            ]
          : (textInputFormatters ?? currentStyle.textInputFormatters),
      obscureText: obscureText ?? currentStyle.obscureText!,
      keyboardType: keyboardType ?? currentStyle.keyboardType,
      enabled: enabled ?? currentStyle.enabled,
      cursorHeight: cursorHeight ?? currentStyle.cursorHeight,
      cursorWidth: cursorWidth ?? currentStyle.cursorWidth!,
      showCursor: showCursor ?? currentStyle.showCursor,
      cursorColor: getColorType(cursorColor ?? currentStyle.cursorColor!),
      cursorRadius: cursorRadius ?? currentStyle.cursorRadius,
      autocorrect: autoCorrect ?? currentStyle.autoCorrect!,
      autofillHints: autofillHints ?? currentStyle.autofillHints,
      autofocus: autofocus ?? currentStyle.autofocus!,
      autovalidateMode: autoValidateMode ?? currentStyle.autoValidateMode,
      buildCounter: buildCounter ?? currentStyle.buildCounter,
      enableInteractiveSelection: enableInteractiveSelection ??
          currentStyle.enableInteractiveSelection!,
      enableSuggestions: enableSuggestions ?? currentStyle.enableSuggestions!,
      expands: expands ?? currentStyle.expands!,
      keyboardAppearance: keyboardAppearance ?? currentStyle.keyboardAppearance,
      maxLengthEnforcement:
          maxLengthEnforcement ?? currentStyle.maxLengthEnforcement,
      obscuringCharacter: obscuringCharacter ?? currentStyle.obscuringCharacter,
      scrollController: scrollController,
      scrollPadding: scrollPadding ?? currentStyle.scrollPadding,
      selectionControls: selectionControls,
      smartDashesType: smartDashesType ?? currentStyle.smartDashesType,
      smartQuotesType: smartQuotesType ?? currentStyle.smartQuotesType,
      strutStyle: strutStyle ?? currentStyle.strutStyle,
      textAlignVertical: textAlignVertical ?? currentStyle.textAlignVertical,
      textCapitalization: textCapitalization ?? currentStyle.textCapitalization,
      textDirection: textDirection ?? currentStyle.textDirection,
      toolbarOptions: toolbarOptions ?? currentStyle.toolbarOptions,
      validator: validator ?? currentStyle.validator,
      controller: currentController,
      decoration: currentStyle.inputDecoration ??
          InputDecoration(
            labelText: labelText ?? currentStyle.labelText,
            label: label ?? currentStyle.label,
            labelStyle: labelStyle ?? currentStyle.labelStyle,
            floatingLabelAlignment:
                floatingLabelAlignment ?? currentStyle.floatingLabelAlignment,
            floatingLabelBehavior:
                floatingLabelBehavior ?? currentStyle.floatingLabelBehavior,
            floatingLabelStyle:
                floatingLabelStyle ?? currentStyle.floatingLabelStyle,
            counterText: counterText ?? currentStyle.counterText,
            counterStyle: counterStyle ?? currentStyle.counterStyle,
            semanticCounterText:
                semanticCounterText ?? currentStyle.semanticCounterText,
            fillColor: getColorType(fillColor ?? currentStyle.fillColor!),
            filled: (fillColor ?? currentStyle.fillColor) != null,
            contentPadding: getContentPaddingEdgeInsets(
              CommonInputModel(
                contentPaddingTop:
                    contentPaddingTop ?? currentStyle.contentPaddingTop,
                contentPaddingBottom:
                    contentPaddingBottom ?? currentStyle.contentPaddingBottom,
                contentPaddingLeft:
                    contentPaddingLeft ?? currentStyle.contentPaddingLeft,
                contentPaddingRight:
                    contentPaddingRight ?? currentStyle.contentPaddingRight,
                contentPaddingHorizontal: contentPaddingHorizontal ??
                    currentStyle.contentPaddingHorizontal,
                contentPaddingVertical: contentPaddingVertical ??
                    currentStyle.contentPaddingVertical,
                contentPadding: contentPadding ?? currentStyle.contentPadding,
              ),
            ),
            hintText: hint ?? currentStyle.hint,
            hintStyle: hintStyle ??
                currentStyle.hintStyle ??
                TextStyle(
                  color: (enabled ?? currentStyle.enabled!)
                      ? getColorType(hintColor ?? currentStyle.hintColor!)
                      : getColorType(
                          disabledColor ?? currentStyle.disabledColor!),
                ),
            isCollapsed: isCollapsed ?? currentStyle.isCollapsed!,
            prefixText: prefixText ?? currentStyle.prefixText,
            suffixText: suffixText ?? currentStyle.suffixText,
            prefixStyle: prefixStyle ?? currentStyle.prefixStyle,
            suffixStyle: suffixStyle ?? currentStyle.suffixStyle,
            counter: counterWidget ?? currentStyle.counterWidget,
            // border: getOutlineInputBorder(
            //   borderColor: currentStyle.disabledColor!,
            // ),
            // ////The border to display when the InputDecorator has the focus and is not showing an error.
            // focusedBorder: getOutlineInputBorder(
            //   borderColor: currentStyle.focusBorderColor!,
            // ),
            // enabledBorder: getOutlineInputBorder(
            //   borderColor: currentStyle.enabledBorderColor!,
            // ),
            // disabledBorder: getOutlineInputBorder(
            //   borderColor: currentStyle.disabledBorderColor!,
            // ),
            // errorBorder: getOutlineInputBorder(
            //   borderColor: currentStyle.errorBorderColor!,
            // ),
            // prefixIcon: currentStyle.prefixWidget ??
            //     (currentStyle.prefixIcon != null
            //         ? getIcon(
            //             currentStyle.prefixIcon!,
            //           )
            //         : null),
            // suffixIcon: currentStyle.suffixWidget ??
            //     (currentStyle.suffixIcon != null
            //         ? getIcon(
            //             currentStyle.suffixIcon!,
            //           )
            //         : null),
            // prefixIconConstraints: BoxConstraints(
            //   minWidth: currentStyle.prefixMinWidth!,
            //   minHeight: currentStyle.prefixMinHeight!,
            // ),
            // suffixIconConstraints: BoxConstraints(
            //   minWidth: currentStyle.suffixMinWidth!,
            //   minHeight: currentStyle.suffixMinHeight!,
            // ),

            alignLabelWithHint: true,
          ),
    );
    return onTap != null
        ? Listener(
            behavior: HitTestBehavior.opaque,
            onPointerDown: (PointerDownEvent details) {
              onTap!.call();
            },
            child: textFormField,
          )
        : textFormField;
  }

  CommonContainer getIcon(CommonIcon icon) {
    return CommonContainer(
      onPress: () {
        icon.onPress?.call();
      },
      style: icon.containerStyle ?? const CommonContainerModel(),
      child: icon.path is IconData
          ? Icon(
              icon.path, // icon data takes only size without width and height, so we need to use size instead. we pass the width to be the size of the icon.
              size: icon.iconDataSize,
              color: generateIconColor(icon.color),
            )
          : icon.path.startsWith('http')
              ? icon.path.endsWith('svg')
                  ? SvgPicture.network(
                      icon.path,
                      color: generateIconColor(icon.color),
                    )
                  : Image.network(
                      icon.path,
                    )
              : icon.path.endsWith('svg')
                  ? SvgPicture.asset(
                      icon.path,
                      color: generateIconColor(icon.color),
                    )
                  : Image.asset(
                      icon.path,
                    ),
    );
  }

  dynamic generateIconColor(dynamic color) => getColorType(
        (style ?? _defaultTextInputModel).enabled!
            ? color
            : (style ?? _defaultTextInputModel).disabledColor!,
      );

  InputBorder getOutlineInputBorder({dynamic borderColor}) {
    return (style ?? _defaultTextInputModel).underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: getColorType(borderColor),
              width: (style ?? _defaultTextInputModel).borderWidth!,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular((style ?? _defaultTextInputModel).radius!),
            ),
            borderSide: (style ?? _defaultTextInputModel).withBorderSide!
                ? BorderSide(
                    color: getColorType(borderColor),
                    width: (style ?? _defaultTextInputModel).borderWidth!,
                  )
                : BorderSide.none,
          );
  }
}

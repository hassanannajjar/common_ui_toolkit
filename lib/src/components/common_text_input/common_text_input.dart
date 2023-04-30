import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_ui_toolkit.dart';

const CommonTextInputModel _defaultTextInputModel = CommonTextInputModel();

class CommonTextInput extends StatelessWidget {
  const CommonTextInput({
    this.style,
    this.containerStyle,
    this.onChanged,
    this.textEditingController,
    this.onTap,
    Key? key,
  }) : super(
          key: key,
        );
  final CommonTextInputModel? style;
  final CommonContainerModel? containerStyle;
  final Function? onChanged;
  final Function? onTap;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    final CommonTextInputModel currentStyle = style ?? _defaultTextInputModel;

    return CommonContainer(
      style: containerStyle ?? const CommonContainerModel(),
      child: TextFormField(
        onTap: () {
          onTap?.call();
        },
        controller: textEditingController ??
            TextEditingController(text: currentStyle.text),
        textInputAction: currentStyle.textInputAction,
        textAlign: currentStyle.textAlign!,
        focusNode: currentStyle.focusNode,
        style: currentStyle.textStyle ??
            TextStyle(
              color: getColorType(currentStyle.textColor!),
              fontSize: currentStyle.fontSize,
            ),
        scrollPhysics: const BouncingScrollPhysics(),
        minLines: currentStyle.minLines,
        maxLines: currentStyle.obscureText! ? 1 : currentStyle.maxLines,
        maxLength: currentStyle.maxLength,

        /// If there is only textInputPattern then we create a list that handles only one item of input formatters,
        /// if we receive a list of input formatters, we handle it as a list of items.
        inputFormatters: currentStyle.textInputPattern != null
            ? <FilteringTextInputFormatter>[
                FilteringTextInputFormatter.allow(
                    currentStyle.textInputPattern!),
              ]
            : currentStyle.textInputFormatters,
        readOnly: currentStyle.readOnly!,
        obscureText: currentStyle.obscureText!,
        keyboardType: currentStyle.textInputType,
        enabled: currentStyle.enabled,
        cursorHeight: currentStyle.cursorHeight,
        cursorWidth: currentStyle.cursorWidth!,
        showCursor: currentStyle.showCursor,
        cursorColor: getColorType(currentStyle.cursorColor!),
        cursorRadius: currentStyle.cursorRadius,
        decoration: currentStyle.inputDecoration ??
            InputDecoration(
              // Send it as null to set the value of the counter to 100
              counterText: currentStyle.counterText,
              counterStyle: currentStyle.counterStyle,
              semanticCounterText: currentStyle.semanticCounterText,
              fillColor: getColorType(currentStyle.fillColor!),
              filled: currentStyle.fillColor != null,
              contentPadding: getContentPaddingEdgeInsets(currentStyle),
              hintText: currentStyle.hint,
              hintStyle: currentStyle.hintStyle ??
                  TextStyle(
                    color: currentStyle.enabled!
                        ? getColorType(currentStyle.hintColor!)
                        : getColorType(currentStyle.disabledColor!),
                  ),
              isCollapsed: currentStyle.isCollapsed!,
              prefixText: currentStyle.prefixText,
              suffixText: currentStyle.suffixText,
              prefixStyle: currentStyle.prefixStyle,
              suffixStyle: currentStyle.suffixStyle,
              prefix: currentStyle.prefix,
              suffix: currentStyle.suffix,
              counter: currentStyle.counterWidget,
              prefixIcon: currentStyle.prefixWidget ??
                  (currentStyle.prefixIcon != null
                      ? getIcon(
                          currentStyle.prefixIcon!,
                        )
                      : null),
              suffixIcon: currentStyle.suffixWidget ??
                  (currentStyle.suffixIcon != null
                      ? getIcon(
                          currentStyle.suffixIcon!,
                        )
                      : null),
              prefixIconConstraints: BoxConstraints(
                minWidth: currentStyle.prefixMinWidth!,
                minHeight: currentStyle.prefixMinHeight!,
              ),
              suffixIconConstraints: BoxConstraints(
                minWidth: currentStyle.suffixMinWidth!,
                minHeight: currentStyle.suffixMinHeight!,
              ),
              border: getOutlineInputBorder(
                borderColor: currentStyle.disabledColor!,
              ),
              ////The border to display when the InputDecorator has the focus and is not showing an error.
              focusedBorder: getOutlineInputBorder(
                borderColor: currentStyle.focusBorderColor!,
              ),
              enabledBorder: getOutlineInputBorder(
                borderColor: currentStyle.enabledBorderColor!,
              ),
              disabledBorder: getOutlineInputBorder(
                borderColor: currentStyle.disabledBorderColor!,
              ),
              errorBorder: getOutlineInputBorder(
                borderColor: currentStyle.errorBorderColor!,
              ),
              alignLabelWithHint: true,
            ),
        onChanged: (String value) {
          onChanged?.call(value);
        },
        autocorrect: currentStyle.autoCorrect!,
        autofillHints: currentStyle.autofillHints,
        autofocus: currentStyle.autofocus!,
        autovalidateMode: currentStyle.autoValidateMode,
        buildCounter: currentStyle.buildCounter,
        enableInteractiveSelection: currentStyle.enableInteractiveSelection!,
        enableSuggestions: currentStyle.enableSuggestions!,
        expands: currentStyle.expands!,
        key: currentStyle.key,
        keyboardAppearance: currentStyle.keyboardAppearance,
        maxLengthEnforcement: currentStyle.maxLengthEnforcement,
        initialValue: currentStyle.initialValue,
        obscuringCharacter: currentStyle.obscuringCharacter,
        onEditingComplete: currentStyle.onEditingComplete,
        onFieldSubmitted: currentStyle.onFieldSubmitted,
        onSaved: currentStyle.onSaved,
        scrollController: currentStyle.scrollController,
        scrollPadding: currentStyle.scrollPadding,
        selectionControls: currentStyle.selectionControls,
        smartDashesType: currentStyle.smartDashesType,
        smartQuotesType: currentStyle.smartQuotesType,
        strutStyle: currentStyle.strutStyle,
        textAlignVertical: currentStyle.textAlignVertical,
        textCapitalization: currentStyle.textCapitalization,
        textDirection: currentStyle.textDirection,
        validator: currentStyle.validator,
      ),
    );
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

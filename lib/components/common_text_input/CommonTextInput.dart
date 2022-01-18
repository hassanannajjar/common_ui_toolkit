import 'package:common_ui_toolkit/models/CommonIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:common_ui_toolkit/index.dart';

class CommonTextInput extends StatelessWidget {
  CommonTextInputModel? style;
  CommonContainerModel? containerStyle;
  Function? onChanged;
  Function? onTap;
  TextEditingController? textEditingController;

  CommonTextInput({
    this.style,
    this.containerStyle,
    this.onChanged,
    this.textEditingController,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextInputModel();
    textEditingController =
        textEditingController ?? TextEditingController(text: style!.text);
    return CommonContainer(
      style: containerStyle,
      child: TextFormField(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        controller: textEditingController,
        textInputAction: style!.textInputAction,
        textAlign: style!.textAlign!,
        focusNode: style!.foucsNode,
        style: style!.textStyle ??
            TextStyle(
              color: getColorType(style!.textColor!),
              fontSize: style!.fontSize,
            ),
        scrollPhysics: BouncingScrollPhysics(),
        minLines: style!.minLines,
        maxLines: style!.obscureText! ? 1 : style!.maxLines,
        maxLength: style!.maxLength,

        /// If there is only textInputPattern then we create a list that handles only one item of input formatters,
        /// if we receive a list of input formatters, we handle it as a list of items.
        inputFormatters: style!.textInputPattern != null
            ? [
                FilteringTextInputFormatter.allow(style!.textInputPattern!),
              ]
            : style!.textInputFormatters ?? null,
        readOnly: style!.readOnly!,
        obscureText: style!.obscureText!,
        keyboardType: style!.textInputType,
        enabled: style!.enabled,
        cursorHeight: style!.cursorHeight,
        cursorWidth: style!.cursorWidth!,
        showCursor: style!.showCursor,
        cursorColor: getColorType(style!.cursorColor!),
        cursorRadius: style!.cursorRadius,
        decoration: style!.inputDecoration ??
            InputDecoration(
              // Send it as null to set the value of the counter to 100
              counterText: style!.counterText,
              counterStyle: style!.counterStyle,
              semanticCounterText: style!.semanticCounterText,
              fillColor: getColorType(style!.fillColor!),
              filled: style!.fillColor != null,
              contentPadding: getContentPaddingEdgeInsets(style),
              hintText: style!.hint,
              hintStyle: style!.hintStyle ??
                  TextStyle(
                    color: style!.enabled!
                        ? getColorType(style!.hintColor!)
                        : getColorType(style!.disabledColor!),
                  ),
              isCollapsed: style!.isCollapsed!,
              prefixText: style!.prefixText,
              suffixText: style!.suffixText,
              prefixStyle: style!.prefixStyle,
              suffixStyle: style!.suffixStyle,
              prefix: style!.prefix,
              suffix: style!.suffix,
              counter: style!.counterWidget,
              prefixIcon: style!.prefixWidget ??
                  (style!.prefixIcon != null
                      ? getIcon(
                          style!.prefixIcon!,
                        )
                      : null),
              suffixIcon: style!.suffixWidget ??
                  (style!.suffixIcon != null
                      ? getIcon(
                          style!.suffixIcon!,
                        )
                      : null),
              prefixIconConstraints: BoxConstraints(
                minWidth: style!.prefixMinWidth!,
                minHeight: style!.prefixMinHeight!,
              ),
              suffixIconConstraints: BoxConstraints(
                minWidth: style!.suffixMinWidth!,
                minHeight: style!.suffixMinHeight!,
              ),
              border: getOutlineInputBorder(
                borderColor: style!.disabledColor!,
              ),
              ////The border to display when the InputDecorator has the focus and is not showing an error.
              focusedBorder: getOutlineInputBorder(
                borderColor: style!.focusBorderColor!,
              ),
              enabledBorder: getOutlineInputBorder(
                borderColor: style!.enabledBorderColor!,
              ),
              disabledBorder: getOutlineInputBorder(
                borderColor: style!.disabledBorderColor!,
              ),
              errorBorder: getOutlineInputBorder(
                borderColor: style!.errorBorderColor!,
              ),
              alignLabelWithHint: true,
            ),
        onChanged: (value) {
          if (onChanged != null) {
            onChanged!(value);
          }
        },
        autocorrect: style!.autocorrect!,
        autofillHints: style!.autofillHints,
        autofocus: style!.autofocus!,
        autovalidateMode: style!.autovalidateMode,
        buildCounter: style!.buildCounter,
        enableInteractiveSelection: style!.enableInteractiveSelection!,
        enableSuggestions: style!.enableSuggestions!,
        expands: style!.expands!,
        key: style!.key,
        keyboardAppearance: style!.keyboardAppearance,
        maxLengthEnforcement: style!.maxLengthEnforcement,
        initialValue: style!.initialValue,
        obscuringCharacter: style!.obscuringCharacter,
        onEditingComplete: style!.onEditingComplete,
        onFieldSubmitted: style!.onFieldSubmitted,
        onSaved: style!.onSaved,
        scrollController: style!.scrollController,
        scrollPadding: style!.scrollPadding,
        selectionControls: style!.selectionControls,
        smartDashesType: style!.smartDashesType,
        smartQuotesType: style!.smartQuotesType,
        strutStyle: style!.strutStyle,
        textAlignVertical: style!.textAlignVertical,
        textCapitalization: style!.textCapitalization,
        textDirection: style!.textDirection,
        toolbarOptions: style!.toolbarOptions,
        validator: style!.validator,
      ),
    );
  }

  getIcon(CommonIcon icon) {
    return CommonContainer(
      onPress: () {
        if (icon.onPress != null) {
          icon.onPress!();
        }
      },
      style: icon.containerStyle ?? CommonContainerModel(),
      child: icon.path.runtimeType == IconData
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

  generateIconColor(color) => getColorType(
        style!.enabled! ? color : style!.disabledColor!,
      );

  getOutlineInputBorder({borderColor}) {
    return style!.underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: getColorType(borderColor),
              width: style!.borderWidth!,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(style!.radius!),
            ),
            borderSide: style!.withBorderSide!
                ? BorderSide(
                    color: getColorType(borderColor),
                    width: style!.borderWidth!,
                  )
                : BorderSide.none,
          );
  }
}

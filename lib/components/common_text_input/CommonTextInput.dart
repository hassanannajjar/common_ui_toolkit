import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:common_ui_toolkit/index.dart';
import 'package:common_ui_toolkit/models/CommonTextInputModel.dart';

import '../../index.dart';
import '../../utils/index.dart';

class CommonTextInput extends StatelessWidget {
  CommonTextInputModel? style;
  CommonContainerModel? containerStyle;
  Function? onChanged;
  TextEditingController? textEditingController;

  CommonTextInput({
    this.style,
    this.containerStyle,
    this.onChanged,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextInputModel();
    textEditingController =
        textEditingController ?? TextEditingController(text: style!.text);
    return CommonContainer(
      style: containerStyle,
      child: TextFormField(
        controller: textEditingController,
        textInputAction: style!.textInputAction,
        textAlign: style!.textAlign!,
        focusNode: style!.foucsNode,
        style: style!.textStyle ??
            TextStyle(
              color: Color(style!.textColor!),
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
        cursorColor: Color(style!.cursorColor!),
        cursorRadius: style!.cursorRadius,
        decoration: style!.inputDecoration ??
            InputDecoration(
              // Send it as null to set the value of the counter to 100
              counterText: style!.counterText,
              counterStyle: style!.counterStyle,
              semanticCounterText: style!.semanticCounterText,
              fillColor: Color(style!.fillColor!),
              filled: style!.fillColor != null,
              contentPadding: getContentPaddingEdgeInsets(style),
              hintText: style!.hint,
              hintStyle: style!.hintStyle ??
                  TextStyle(
                    color: style!.enabled!
                        ? Color(style!.hintColor!)
                        : Color(style!.disabledColor!),
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
      ),
    );
  }

  getOutlineInputBorder({borderColor}) {
    return style!.underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(borderColor),
              width: style!.borderWidth!,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(style!.radius!),
            ),
            borderSide: style!.withBorderSide!
                ? BorderSide(
                    color: Color(borderColor),
                    width: style!.borderWidth!,
                  )
                : BorderSide.none,
          );
  }
}

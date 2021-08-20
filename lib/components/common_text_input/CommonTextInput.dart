import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:common_ui_toolkit/index.dart';
import 'package:common_ui_toolkit/models/CommonTextInputModel.dart';

import '../../index.dart';
import '../../utils/index.dart';

class CommonTextInput extends StatelessWidget {
  CommonTextInputModel? style;
  CommonContainerModel? containerStyle;
  Function? onChanged;

  Function? onTap;
  TextEditingController? textEditingController;
  String? text;
  String? prefixIcon;
  String? suffixIcon;

  // Widgets
  Widget? prefixWidget;
  Widget? suffixWidget;

  CommonTextInput({
    this.style,
    this.onChanged,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    style = style ?? CommonTextInputModel();
    textEditingController = TextEditingController(text: text);
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
        maxLines: style!.maxLines,
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
        decoration: style!.inputDecoration ??
            InputDecoration(
              fillColor: Color(style!.fillColor!),
              filled: style!.fillColor != null,
              suffixIconConstraints: BoxConstraints(
                minHeight: style!.suffixIconHight!,
                minWidth: style!.suffixIconWidth!,
              ),
              prefixIconConstraints: BoxConstraints(
                minHeight: style!.prefixIconHight!,
                minWidth: style!.prefixIconWidth!,
              ),
              contentPadding: getContentPaddingEdgeInsets(style),
              hintText: style!.hint,
              hintStyle: style!.hintStyle ??
                  TextStyle(
                    color: style!.enabled!
                        ? Color(style!.hintColor!)
                        : Color(style!.disabledColor!),
                  ),
              isCollapsed: style!.isCollapsed!,
              prefixIcon: prefixWidget ??
                  getIcon(
                    prefixIcon,
                    color: style!.prefixIconColor,
                  ),
              suffixIcon: suffixWidget ??
                  getIcon(
                    suffixIcon,
                    color: style!.suffixIconColor,
                  ),
              border: getOutlineInputBorder(
                borderColor: style!.disabledColor!,
              ),
              ////The border to display when the InputDecorator has the focus and is not showing an error.
              focusedBorder: getOutlineInputBorder(
                borderColor: style!.focusBorderColor!,
              ),
              enabledBorder: getOutlineInputBorder(
                borderColor: style!.focusBorderColor!,
              ),
              alignLabelWithHint: true,
            ),
        onChanged: (value) {
          onChanged!(value);
          // if ((value.length >= maxLenght && inputType == NUMBER_INPUT_TYPE) ||
          //     (inputType == EMAIL_INPUT_TYPE &&
          //         RegExp(r'^[^@]+@[^@]+\.(com|net)').hasMatch(value))) {
          //   if (withDoneIcon) {
          //     controller.setSuffixIcon(Icons.done);
          //   }
          //   controller.isContentVerified = true;
          //   if (value.length == maxLenght && inputType == NUMBER_INPUT_TYPE) {
          //     if (closeKeyboardAfterVerifiedLength)
          //       FocusScope.of(context).requestFocus(FocusNode());
          //     if (afterVerifiyed != null) afterVerifiyed();
          //   }
          // } else {
          //   controller.setSuffixIcon(null);
          //   controller.isContentVerified = false;
          // }
          // if (onChanged != null) {
          //   onChanged(value);
          // }
        },
      ),
    );
  }

  getIcon(icon, {color}) {
    if (icon != null) {
      if (icon.runtimeType == IconData) {
        return Icon(
          icon,
          color: generateIconColor(color),
        );
      } else {
        //Icon type is a string
        if (icon.contains('svg')) {
          return SvgPicture.asset(
            icon,
            color: generateIconColor(color),
            fit: BoxFit.none,
          );
        } else {
          return Image.asset(
            icon,
            fit: BoxFit.fill,
          );
        }
      }
    }
  }

  generateIconColor(color) => Color(
        style!.enabled! ? color : style!.disabledColor!,
      );

  getOutlineInputBorder({borderColor}) {
    return style!.underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(style!.underlineColor!),
              width: style!.underlineThikness!,
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

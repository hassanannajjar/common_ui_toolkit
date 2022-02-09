import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:common_ui_toolkit/index.dart';

class CommonTextInput extends StatelessWidget {
  final CommonTextInputModel? style;
  final CommonContainerModel? containerStyle;
  final Function? onChanged;
  final Function? onTap;
  final TextEditingController? textEditingController;
  final CommonTextInputModel defalutTextInputModel = CommonTextInputModel();

  CommonTextInput({
    this.style,
    this.containerStyle,
    this.onChanged,
    this.textEditingController,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: containerStyle ?? CommonContainerModel(),
      child: TextFormField(
        onTap: () {
          if (onTap != null) {
            onTap!();
          }
        },
        controller: textEditingController ??
            TextEditingController(text: (style ?? defalutTextInputModel).text),
        textInputAction: (style ?? defalutTextInputModel).textInputAction,
        textAlign: (style ?? defalutTextInputModel).textAlign!,
        focusNode: (style ?? defalutTextInputModel).foucsNode,
        style: (style ?? defalutTextInputModel).textStyle ??
            TextStyle(
              color: getColorType((style ?? defalutTextInputModel).textColor!),
              fontSize: (style ?? defalutTextInputModel).fontSize,
            ),
        scrollPhysics: BouncingScrollPhysics(),
        minLines: (style ?? defalutTextInputModel).minLines,
        maxLines: (style ?? defalutTextInputModel).obscureText!
            ? 1
            : (style ?? defalutTextInputModel).maxLines,
        maxLength: (style ?? defalutTextInputModel).maxLength,

        /// If there is only textInputPattern then we create a list that handles only one item of input formatters,
        /// if we receive a list of input formatters, we handle it as a list of items.
        inputFormatters:
            (style ?? defalutTextInputModel).textInputPattern != null
                ? [
                    FilteringTextInputFormatter.allow(
                        (style ?? defalutTextInputModel).textInputPattern!),
                  ]
                : (style ?? defalutTextInputModel).textInputFormatters ?? null,
        readOnly: (style ?? defalutTextInputModel).readOnly!,
        obscureText: (style ?? defalutTextInputModel).obscureText!,
        keyboardType: (style ?? defalutTextInputModel).textInputType,
        enabled: (style ?? defalutTextInputModel).enabled,
        cursorHeight: (style ?? defalutTextInputModel).cursorHeight,
        cursorWidth: (style ?? defalutTextInputModel).cursorWidth!,
        showCursor: (style ?? defalutTextInputModel).showCursor,
        cursorColor:
            getColorType((style ?? defalutTextInputModel).cursorColor!),
        cursorRadius: (style ?? defalutTextInputModel).cursorRadius,
        decoration: (style ?? defalutTextInputModel).inputDecoration ??
            InputDecoration(
              // Send it as null to set the value of the counter to 100
              counterText: (style ?? defalutTextInputModel).counterText,
              counterStyle: (style ?? defalutTextInputModel).counterStyle,
              semanticCounterText:
                  (style ?? defalutTextInputModel).semanticCounterText,
              fillColor:
                  getColorType((style ?? defalutTextInputModel).fillColor!),
              filled: (style ?? defalutTextInputModel).fillColor != null,
              contentPadding: getContentPaddingEdgeInsets(style),
              hintText: (style ?? defalutTextInputModel).hint,
              hintStyle: (style ?? defalutTextInputModel).hintStyle ??
                  TextStyle(
                    color: (style ?? defalutTextInputModel).enabled!
                        ? getColorType(
                            (style ?? defalutTextInputModel).hintColor!)
                        : getColorType(
                            (style ?? defalutTextInputModel).disabledColor!),
                  ),
              isCollapsed: (style ?? defalutTextInputModel).isCollapsed!,
              prefixText: (style ?? defalutTextInputModel).prefixText,
              suffixText: (style ?? defalutTextInputModel).suffixText,
              prefixStyle: (style ?? defalutTextInputModel).prefixStyle,
              suffixStyle: (style ?? defalutTextInputModel).suffixStyle,
              prefix: (style ?? defalutTextInputModel).prefix,
              suffix: (style ?? defalutTextInputModel).suffix,
              counter: (style ?? defalutTextInputModel).counterWidget,
              prefixIcon: (style ?? defalutTextInputModel).prefixWidget ??
                  ((style ?? defalutTextInputModel).prefixIcon != null
                      ? getIcon(
                          (style ?? defalutTextInputModel).prefixIcon!,
                        )
                      : null),
              suffixIcon: (style ?? defalutTextInputModel).suffixWidget ??
                  ((style ?? defalutTextInputModel).suffixIcon != null
                      ? getIcon(
                          (style ?? defalutTextInputModel).suffixIcon!,
                        )
                      : null),
              prefixIconConstraints: BoxConstraints(
                minWidth: (style ?? defalutTextInputModel).prefixMinWidth!,
                minHeight: (style ?? defalutTextInputModel).prefixMinHeight!,
              ),
              suffixIconConstraints: BoxConstraints(
                minWidth: (style ?? defalutTextInputModel).suffixMinWidth!,
                minHeight: (style ?? defalutTextInputModel).suffixMinHeight!,
              ),
              border: getOutlineInputBorder(
                borderColor: (style ?? defalutTextInputModel).disabledColor!,
              ),
              ////The border to display when the InputDecorator has the focus and is not showing an error.
              focusedBorder: getOutlineInputBorder(
                borderColor: (style ?? defalutTextInputModel).focusBorderColor!,
              ),
              enabledBorder: getOutlineInputBorder(
                borderColor:
                    (style ?? defalutTextInputModel).enabledBorderColor!,
              ),
              disabledBorder: getOutlineInputBorder(
                borderColor:
                    (style ?? defalutTextInputModel).disabledBorderColor!,
              ),
              errorBorder: getOutlineInputBorder(
                borderColor: (style ?? defalutTextInputModel).errorBorderColor!,
              ),
              alignLabelWithHint: true,
            ),
        onChanged: (value) {
          if (onChanged != null) {
            onChanged!(value);
          }
        },
        autocorrect: (style ?? defalutTextInputModel).autocorrect!,
        autofillHints: (style ?? defalutTextInputModel).autofillHints,
        autofocus: (style ?? defalutTextInputModel).autofocus!,
        autovalidateMode: (style ?? defalutTextInputModel).autovalidateMode,
        buildCounter: (style ?? defalutTextInputModel).buildCounter,
        enableInteractiveSelection:
            (style ?? defalutTextInputModel).enableInteractiveSelection!,
        enableSuggestions: (style ?? defalutTextInputModel).enableSuggestions!,
        expands: (style ?? defalutTextInputModel).expands!,
        key: (style ?? defalutTextInputModel).key,
        keyboardAppearance: (style ?? defalutTextInputModel).keyboardAppearance,
        maxLengthEnforcement:
            (style ?? defalutTextInputModel).maxLengthEnforcement,
        initialValue: (style ?? defalutTextInputModel).initialValue,
        obscuringCharacter: (style ?? defalutTextInputModel).obscuringCharacter,
        onEditingComplete: (style ?? defalutTextInputModel).onEditingComplete,
        onFieldSubmitted: (style ?? defalutTextInputModel).onFieldSubmitted,
        onSaved: (style ?? defalutTextInputModel).onSaved,
        scrollController: (style ?? defalutTextInputModel).scrollController,
        scrollPadding: (style ?? defalutTextInputModel).scrollPadding,
        selectionControls: (style ?? defalutTextInputModel).selectionControls,
        smartDashesType: (style ?? defalutTextInputModel).smartDashesType,
        smartQuotesType: (style ?? defalutTextInputModel).smartQuotesType,
        strutStyle: (style ?? defalutTextInputModel).strutStyle,
        textAlignVertical: (style ?? defalutTextInputModel).textAlignVertical,
        textCapitalization: (style ?? defalutTextInputModel).textCapitalization,
        textDirection: (style ?? defalutTextInputModel).textDirection,
        toolbarOptions: (style ?? defalutTextInputModel).toolbarOptions,
        validator: (style ?? defalutTextInputModel).validator,
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
        (style ?? defalutTextInputModel).enabled!
            ? color
            : (style ?? defalutTextInputModel).disabledColor!,
      );

  getOutlineInputBorder({borderColor}) {
    return (style ?? defalutTextInputModel).underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: getColorType(borderColor),
              width: (style ?? defalutTextInputModel).borderWidth!,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular((style ?? defalutTextInputModel).radius!),
            ),
            borderSide: (style ?? defalutTextInputModel).withBorderSide!
                ? BorderSide(
                    color: getColorType(borderColor),
                    width: (style ?? defalutTextInputModel).borderWidth!,
                  )
                : BorderSide.none,
          );
  }
}

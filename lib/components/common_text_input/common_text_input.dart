import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common_ui_toolkit.dart';

final Condign defaultTextInputModel = Condign();

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
  final Condign? style;
  final CommonContainerModel? containerStyle;
  final Function? onChanged;
  final Function? onTap;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: containerStyle ?? CommonContainerModel(),
      child: TextFormField(
        onTap: () {
          // if (onTap != null) {
          onTap?.call();
          // }
        },
        controller: textEditingController ??
            TextEditingController(text: (style ?? defaultTextInputModel).text),
        textInputAction: (style ?? defaultTextInputModel).textInputAction,
        textAlign: (style ?? defaultTextInputModel).textAlign!,
        focusNode: (style ?? defaultTextInputModel).focusNode,
        style: (style ?? defaultTextInputModel).textStyle ??
            TextStyle(
              color: getColorType((style ?? defaultTextInputModel).textColor!),
              fontSize: (style ?? defaultTextInputModel).fontSize,
            ),
        scrollPhysics: const BouncingScrollPhysics(),
        minLines: (style ?? defaultTextInputModel).minLines,
        maxLines: (style ?? defaultTextInputModel).obscureText!
            ? 1
            : (style ?? defaultTextInputModel).maxLines,
        maxLength: (style ?? defaultTextInputModel).maxLength,

        /// If there is only textInputPattern then we create a list that handles only one item of input formatters,
        /// if we receive a list of input formatters, we handle it as a list of items.
        inputFormatters:
            (style ?? defaultTextInputModel).textInputPattern != null
                ? <FilteringTextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        (style ?? defaultTextInputModel).textInputPattern!),
                  ]
                : (style ?? defaultTextInputModel).textInputFormatters,
        readOnly: (style ?? defaultTextInputModel).readOnly!,
        obscureText: (style ?? defaultTextInputModel).obscureText!,
        keyboardType: (style ?? defaultTextInputModel).textInputType,
        enabled: (style ?? defaultTextInputModel).enabled,
        cursorHeight: (style ?? defaultTextInputModel).cursorHeight,
        cursorWidth: (style ?? defaultTextInputModel).cursorWidth!,
        showCursor: (style ?? defaultTextInputModel).showCursor,
        cursorColor:
            getColorType((style ?? defaultTextInputModel).cursorColor!),
        cursorRadius: (style ?? defaultTextInputModel).cursorRadius,
        decoration: (style ?? defaultTextInputModel).inputDecoration ??
            InputDecoration(
              // Send it as null to set the value of the counter to 100
              counterText: (style ?? defaultTextInputModel).counterText,
              counterStyle: (style ?? defaultTextInputModel).counterStyle,
              semanticCounterText:
                  (style ?? defaultTextInputModel).semanticCounterText,
              fillColor:
                  getColorType((style ?? defaultTextInputModel).fillColor!),
              filled: (style ?? defaultTextInputModel).fillColor != null,
              contentPadding: getContentPaddingEdgeInsets(style),
              hintText: (style ?? defaultTextInputModel).hint,
              hintStyle: (style ?? defaultTextInputModel).hintStyle ??
                  TextStyle(
                    color: (style ?? defaultTextInputModel).enabled!
                        ? getColorType(
                            (style ?? defaultTextInputModel).hintColor!)
                        : getColorType(
                            (style ?? defaultTextInputModel).disabledColor!),
                  ),
              isCollapsed: (style ?? defaultTextInputModel).isCollapsed!,
              prefixText: (style ?? defaultTextInputModel).prefixText,
              suffixText: (style ?? defaultTextInputModel).suffixText,
              prefixStyle: (style ?? defaultTextInputModel).prefixStyle,
              suffixStyle: (style ?? defaultTextInputModel).suffixStyle,
              prefix: (style ?? defaultTextInputModel).prefix,
              suffix: (style ?? defaultTextInputModel).suffix,
              counter: (style ?? defaultTextInputModel).counterWidget,
              prefixIcon: (style ?? defaultTextInputModel).prefixWidget ??
                  ((style ?? defaultTextInputModel).prefixIcon != null
                      ? getIcon(
                          (style ?? defaultTextInputModel).prefixIcon!,
                        )
                      : null),
              suffixIcon: (style ?? defaultTextInputModel).suffixWidget ??
                  ((style ?? defaultTextInputModel).suffixIcon != null
                      ? getIcon(
                          (style ?? defaultTextInputModel).suffixIcon!,
                        )
                      : null),
              prefixIconConstraints: BoxConstraints(
                minWidth: (style ?? defaultTextInputModel).prefixMinWidth!,
                minHeight: (style ?? defaultTextInputModel).prefixMinHeight!,
              ),
              suffixIconConstraints: BoxConstraints(
                minWidth: (style ?? defaultTextInputModel).suffixMinWidth!,
                minHeight: (style ?? defaultTextInputModel).suffixMinHeight!,
              ),
              border: getOutlineInputBorder(
                borderColor: (style ?? defaultTextInputModel).disabledColor!,
              ),
              ////The border to display when the InputDecorator has the focus and is not showing an error.
              focusedBorder: getOutlineInputBorder(
                borderColor: (style ?? defaultTextInputModel).focusBorderColor!,
              ),
              enabledBorder: getOutlineInputBorder(
                borderColor:
                    (style ?? defaultTextInputModel).enabledBorderColor!,
              ),
              disabledBorder: getOutlineInputBorder(
                borderColor:
                    (style ?? defaultTextInputModel).disabledBorderColor!,
              ),
              errorBorder: getOutlineInputBorder(
                borderColor: (style ?? defaultTextInputModel).errorBorderColor!,
              ),
              alignLabelWithHint: true,
            ),
        onChanged: (String value) {
          onChanged?.call(value);
        },
        autocorrect: (style ?? defaultTextInputModel).autoCorrect!,
        autofillHints: (style ?? defaultTextInputModel).autofillHints,
        autofocus: (style ?? defaultTextInputModel).autofocus!,
        autovalidateMode: (style ?? defaultTextInputModel).autoValidateMode,
        buildCounter: (style ?? defaultTextInputModel).buildCounter,
        enableInteractiveSelection:
            (style ?? defaultTextInputModel).enableInteractiveSelection!,
        enableSuggestions: (style ?? defaultTextInputModel).enableSuggestions!,
        expands: (style ?? defaultTextInputModel).expands!,
        key: (style ?? defaultTextInputModel).key,
        keyboardAppearance: (style ?? defaultTextInputModel).keyboardAppearance,
        maxLengthEnforcement:
            (style ?? defaultTextInputModel).maxLengthEnforcement,
        initialValue: (style ?? defaultTextInputModel).initialValue,
        obscuringCharacter: (style ?? defaultTextInputModel).obscuringCharacter,
        onEditingComplete: (style ?? defaultTextInputModel).onEditingComplete,
        onFieldSubmitted: (style ?? defaultTextInputModel).onFieldSubmitted,
        onSaved: (style ?? defaultTextInputModel).onSaved,
        scrollController: (style ?? defaultTextInputModel).scrollController,
        scrollPadding: (style ?? defaultTextInputModel).scrollPadding,
        selectionControls: (style ?? defaultTextInputModel).selectionControls,
        smartDashesType: (style ?? defaultTextInputModel).smartDashesType,
        smartQuotesType: (style ?? defaultTextInputModel).smartQuotesType,
        strutStyle: (style ?? defaultTextInputModel).strutStyle,
        textAlignVertical: (style ?? defaultTextInputModel).textAlignVertical,
        textCapitalization: (style ?? defaultTextInputModel).textCapitalization,
        textDirection: (style ?? defaultTextInputModel).textDirection,
        toolbarOptions: (style ?? defaultTextInputModel).toolbarOptions,
        validator: (style ?? defaultTextInputModel).validator,
      ),
    );
  }

  CommonContainer getIcon(CommonIcon icon) {
    return CommonContainer(
      onPress: () {
        icon.onPress?.call();
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

  dynamic generateIconColor(dynamic color) => getColorType(
        (style ?? defaultTextInputModel).enabled!
            ? color
            : (style ?? defaultTextInputModel).disabledColor!,
      );

  InputBorder getOutlineInputBorder({dynamic borderColor}) {
    return (style ?? defaultTextInputModel).underlined!
        ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: getColorType(borderColor),
              width: (style ?? defaultTextInputModel).borderWidth!,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular((style ?? defaultTextInputModel).radius!),
            ),
            borderSide: (style ?? defaultTextInputModel).withBorderSide!
                ? BorderSide(
                    color: getColorType(borderColor),
                    width: (style ?? defaultTextInputModel).borderWidth!,
                  )
                : BorderSide.none,
          );
  }
}

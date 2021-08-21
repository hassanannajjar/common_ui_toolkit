import 'package:common_ui_toolkit/components/common_text_input/CommonTextInput.dart';
import 'package:common_ui_toolkit/models/CommonTextInputModel.dart';
import 'package:flutter/material.dart';
import 'package:common_ui_toolkit/index.dart';

import '../utils/Constants.dart';

class TextInputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(PRIMARY_COLOR),
        title: CommonText(
          containerStyle: CommonContainerModel().copyWith(
            backgroundColor: 0x00FFFFFF,
            alignment: Alignment.center,
            width: 0.7,
          ),
          style: CommonTextStyles().h2Style(),
          text: 'Text inputs',
        ),
      ),
      body: SingleChildScrollView(
        child: CommonContainer(
          style: CommonContainerModel(
            margin: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text:
                    'CommonTextInput with built in flutter prefix icons and assets icon',
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  text: 'Intial text input value',
                  focusBorderColor: BLACK_COLOR,
                  prefixIcon: CommonIcon(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    path: Icons.ac_unit_rounded,
                    iconDataSize: DEVICE_WIDTH * 0.05,
                    color: RED_COLOR,
                  ),
                  suffixIcon: CommonIcon(
                    containerStyle: CommonContainerModel(
                      width: DEVICE_WIDTH * 0.04,
                      height: DEVICE_WIDTH * 0.04,
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    color: RED_COLOR,
                    path: 'assets/icons/account_icon.svg',
                  ),
                ),
              ),
              CommonText(
                text: 'CommonTextInput with prefix and suffix widgets',
              ),
              CommonTextInput(
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_HEIGHT * 0.01,
                ),
                style: CommonTextInputModel(
                  borderWidth: 3,
                  focusBorderColor: RED_COLOR,
                  fillColor: GREY_COLOR,
                  prefixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: WHITE_COLOR,
                    ),
                    text: '+966',
                  ),
                  suffixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: WHITE_COLOR,
                    ),
                    text: 'Palestine',
                  ),
                ),
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  radius: 0,
                  enabled: false,
                  borderWidth: 2,
                  focusBorderColor: RED_COLOR,
                  disabledColor: RED_COLOR,
                  hint: 'Search',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

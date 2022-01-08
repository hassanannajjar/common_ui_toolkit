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
                  focusBorderColor: COMMON_BLACK_COLOR,
                  prefixIcon: CommonIcon(
                    onPress: () {
                      print('Prefix icon pressed');
                    },
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    path: Icons.ac_unit_rounded,
                    iconDataSize: DEVICE_WIDTH * 0.05,
                    color: COMMON_RED_COLOR,
                  ),
                  suffixIcon: CommonIcon(
                    containerStyle: CommonContainerModel(
                      width: DEVICE_WIDTH * 0.04,
                      height: DEVICE_WIDTH * 0.04,
                      marginHorizontal: DEVICE_WIDTH * 0.01,
                    ),
                    color: COMMON_RED_COLOR,
                    path: 'assets/icons/account_icon.svg',
                  ),
                ),
              ),
              CommonText(
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_WIDTH * 0.03,
                ),
                text: 'CommonTextInput with prefix and suffix widgets',
              ),
              CommonTextInput(
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_HEIGHT * 0.01,
                ),
                style: CommonTextInputModel(
                  counterText: 'Styled counter Text',
                  counterStyle: TextStyle(
                    color: Colors.red,
                  ),
                  borderWidth: 3,
                  focusBorderColor: COMMON_RED_COLOR,
                  fillColor: COMMON_GREY_COLOR,
                  prefixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: '+966',
                  ),
                  suffixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: DEVICE_WIDTH * 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: 'Palestine',
                  ),
                ),
              ),
              CommonText(
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_WIDTH * 0.03,
                ),
                text: 'Disabled text input with zero radius',
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  radius: 0,
                  enabled: false,
                  borderWidth: 2,
                  disabledColor: COMMON_RED_COLOR,
                  hint: 'Search',
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CommonTextInput(
                  containerStyle: CommonContainerModel(
                    marginTop: DEVICE_WIDTH * 0.03,
                    width: DEVICE_WIDTH * 0.5,
                  ),
                  style: CommonTextInputModel(
                    underlined: true,
                    cursorWidth: 10,
                    cursorColor: COMMON_RED_COLOR,
                    // showCursor: false,
                    cursorRadius: Radius.circular(100),
                    hint: 'Search',
                    cursorHeight: 30,
                    borderWidth: 3,
                    focusBorderColor: COMMON_RED_COLOR,
                    prefixIcon: CommonIcon(
                      containerStyle: CommonContainerModel(
                        marginHorizontal: 16.0,
                      ),
                      path: Icons.search,
                    ),
                  ),
                ),
              ),
              CommonText(
                text: 'Multiline text input',
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_WIDTH * 0.03,
                ),
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  cursorColor: COMMON_RED_COLOR,
                  focusBorderColor: COMMON_RED_COLOR,
                  hint: 'Type...',
                  textInputType: TextInputType.multiline,
                  minLines: 7,
                ),
              ),
              CommonText(
                text: 'Password text input',
                containerStyle: CommonContainerModel(
                  marginTop: DEVICE_WIDTH * 0.03,
                ),
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  hint: '******',
                  obscureText: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

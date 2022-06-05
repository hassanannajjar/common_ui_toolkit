import 'package:common_ui_toolkit/common_ui_toolkit.dart';

import '../utils/constants.dart';
import '../utils/log.dart';

class TextInputs extends StatelessWidget {
  const TextInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorPrimary),
        title: CommonText(
          containerStyle: const CommonContainerModel().copyWith(
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
          style: const CommonContainerModel(
            margin: 0.016,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CommonText(
                text:
                    'CommonTextInput with built in flutter prefix icons and assets icon',
              ),
              CommonTextInput(
                style: CommonTextInputModel(
                  text: 'Initial text input value',
                  focusBorderColor: COMMON_BLACK_COLOR,
                  prefixIcon: CommonIcon(
                    onPress: () {
                      consoleLog('Prefix icon pressed');
                    },
                    containerStyle: const CommonContainerModel(
                      marginHorizontal: 0.01,
                    ),
                    path: Icons.ac_unit_rounded,
                    iconDataSize: 0.05,
                    color: COMMON_RED_COLOR,
                  ),
                  suffixIcon: const CommonIcon(
                    containerStyle: CommonContainerModel(
                      width: 0.04,
                      height: 0.04,
                      marginHorizontal: 0.01,
                    ),
                    color: COMMON_RED_COLOR,
                    path: 'assets/icons/account_icon.svg',
                  ),
                ),
              ),
              const CommonText(
                containerStyle: CommonContainerModel(
                  marginTop: 0.03,
                ),
                text: 'CommonTextInput with prefix and suffix widgets',
              ),
              const CommonTextInput(
                containerStyle: CommonContainerModel(
                  marginTop: 0.01,
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
                      marginHorizontal: 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: '+966',
                  ),
                  suffixWidget: CommonText(
                    containerStyle: CommonContainerModel(
                      marginHorizontal: 0.03,
                    ),
                    style: CommonTextModel(
                      fontColor: COMMON_WHITE_COLOR,
                    ),
                    text: 'Palestine',
                  ),
                ),
              ),
              const CommonText(
                containerStyle: CommonContainerModel(
                  marginTop: 0.03,
                ),
                text: 'Disabled text input with zero radius',
              ),
              const CommonTextInput(
                style: CommonTextInputModel(
                  radius: 0,
                  enabled: false,
                  borderWidth: 2,
                  disabledColor: COMMON_RED_COLOR,
                  hint: 'Search',
                ),
              ),
              const Align(
                child: CommonTextInput(
                  containerStyle: CommonContainerModel(
                    marginTop: 0.03,
                    width: 0.5,
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
              const CommonText(
                text: 'Multiline text input',
                containerStyle: CommonContainerModel(
                  marginTop: 0.03,
                ),
              ),
              const CommonTextInput(
                style: CommonTextInputModel(
                  cursorColor: COMMON_RED_COLOR,
                  focusBorderColor: COMMON_RED_COLOR,
                  hint: 'Type...',
                  textInputType: TextInputType.multiline,
                  minLines: 7,
                ),
              ),
              const CommonText(
                text: 'Password text input',
                containerStyle: CommonContainerModel(
                  marginTop: 0.03,
                ),
              ),
              const CommonTextInput(
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

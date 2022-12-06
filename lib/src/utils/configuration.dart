import '../../common_ui_toolkit.dart';

// ignore: non_constant_identifier_names
CommonUiConfig GLOBAL_CONFIG = const CommonUiConfig();

class CommonUiConfig {
  const CommonUiConfig({
    this.textModel,
    this.inputModel,
    this.buttonModel,
    // this.containerModel,
  });

  final CommonTextModel? textModel;
  final CommonInputModel? inputModel;
  final CommonButtonModel? buttonModel;
  // final CommonContainerModel? containerModel;
}

void setGlobalConfig({
  CommonTextModel? textModel,
  CommonInputModel? inputModel,
  CommonButtonModel? buttonModel,
  // CommonContainerModel? containerModel,
}) {
  GLOBAL_CONFIG = CommonUiConfig(
    textModel: textModel,
    inputModel: inputModel,
    buttonModel: buttonModel,
    // containerModel: containerModel,
  );
}

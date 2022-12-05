import '../../common_ui_toolkit.dart';

CommonUiConfig GLOBAL_CONFIG = const CommonUiConfig();

class CommonUiConfig {
  const CommonUiConfig({
    this.textModel,
    this.inputModel,
  });

  final CommonTextModel? textModel;
  final CommonInputModel? inputModel;
}

void setGlobalConfig({
  CommonTextModel? textModel,
  CommonInputModel? inputModel,
}) {
  GLOBAL_CONFIG = CommonUiConfig(
    textModel: textModel,
    inputModel: inputModel,
  );
}

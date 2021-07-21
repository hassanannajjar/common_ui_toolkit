import '../../index.dart';

class ButtonController extends GetxController {
  bool isEnabled;

  ButtonController({
    this.isEnabled = true,
  });

  void changeEnabledStatus(isEnabled) {
    this.isEnabled = isEnabled;
    update();
  }
}

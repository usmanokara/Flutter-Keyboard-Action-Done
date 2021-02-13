library flutter_keyboard_action_done;

import 'package:flutter/cupertino.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'keyboard_done.dart';

class KeyBoardDoneController {
  static init(BuildContext context) {
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        print(visible);
        if (visible) {
          KeyBoardController.showOverlay(context);
          return;
        }
        KeyBoardController.removeOverlay();
      },
    );
  }
}

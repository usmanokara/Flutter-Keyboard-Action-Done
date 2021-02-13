import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputDoneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
          child: CupertinoButton(
            padding: EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0),
            onPressed: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Text("Done",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}

class KeyBoardController {
  static OverlayEntry overlayEntry;
  static void showOverlay(BuildContext context) {
    if (overlayEntry != null) return;
    OverlayState overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 0.0,
          left: 0.0,
          child: SizedBox(height: 60, child: InputDoneView()));
    });
    overlayState.insert(overlayEntry);
  }

  static void removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry.remove();
      overlayEntry = null;
    }
  }
}

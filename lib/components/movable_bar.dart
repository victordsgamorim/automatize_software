import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class MovableWindow extends StatelessWidget {
  final bool hasWindowsButton;

  const MovableWindow({super.key, this.hasWindowsButton = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WindowTitleBarBox(
          child: Row(
            children: [
              Expanded(child: MoveWindow()),
              Visibility(
                visible: hasWindowsButton,
                child: Row(
                  children: [
                    MinimizeWindowButton(),
                    MaximizeWindowButton(),
                    CloseWindowButton(),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

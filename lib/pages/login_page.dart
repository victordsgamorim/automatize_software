import 'dart:ui';

import 'package:automatize/components/movable_bar.dart';
import 'package:automatize/components/sections/login_fields.dart';
import 'package:automatize/core/theme/theme_color.dart';
import 'package:automatize/gen/assets.gen.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

const double minWidth = 350;
const String companyName = "Automatize";

class WindowPage extends StatefulWidget {
  const WindowPage({Key? key}) : super(key: key);

  @override
  State<WindowPage> createState() => _WindowPageState();
}

class _WindowPageState extends State<WindowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.white,
        width: 1,
        child: Row(
          children: const [
            _LeftSide(),
            _RightSide(),
          ],
        ),
      ),
    );
  }
}

class _LeftSide extends StatefulWidget {
  const _LeftSide({Key? key}) : super(key: key);

  @override
  State<_LeftSide> createState() => _LeftSideState();
}

class _LeftSideState extends State<_LeftSide>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: minWidth),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .35,
        // color: const Color(0xfff6a00c),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MovableWindow(hasWindowsButton: false),
            Text(
              companyName,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(color: ThemeColor.inputTextColor),
            ),
            const LoginFields()
          ],
        ),
      ),
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: .9,
              image: Assets.images.cameraBannerBlur.provider(),
            ),
          ),
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FractionallySizedBox(
              widthFactor: .95,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .5,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Assets.images.cameraBanner.provider(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, .8],
              colors: [
                // ThemeColor.darkBlue[50]!,
                ThemeColor.aqua[50]!,
                ThemeColor.darkBlue[500]!,
              ],
            ),
          ),
          child: const MovableWindow(),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                companyName,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.white,
                  letterSpacing: 5,
                  shadows: [
                    const Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 10.0,
                      color: Colors.black87,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

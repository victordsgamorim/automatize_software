import 'package:automatize/automatize_app.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';


const String currentVersion = "0.5.0";
const Size minSize = Size(800, 600);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AutomatizeApp());

  doWhenWindowReady(() {
    appWindow.size = const Size(1000, 750);
    appWindow.minSize = minSize;
    appWindow.title = "Automatize";
    appWindow.show();
  });
}

import 'package:automatize/core/theme/theme.dart';
import 'package:automatize/pages/login_page.dart';
import 'package:flutter/material.dart';

class AutomatizeApp extends StatelessWidget {
  const AutomatizeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const WindowPage(),
    );
  }
}

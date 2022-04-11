import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/assets/light_theme.dart';
import 'package:online_learning_ui_kit/ui/views/home_view/home_view.dart';

class AppHolder extends StatelessWidget {
  const AppHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Learning UI Kit",
      theme: lightThemeData,
      home: const HomeView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/login_view/login_view.dart';

class AppHolder extends StatelessWidget {
  const AppHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Learning UI Kit",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const LoginView(),
    );
  }
}

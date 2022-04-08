import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/register_view/register_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterViewModel(),
      builder: (context, _) {
        return const _ViewContext();
      },
    );
  }
}

class _ViewContext extends StatelessWidget {
  const _ViewContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("register")),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/login_view/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
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
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text("LoginView"),
            ),
            ElevatedButton(
                onPressed: context.read<LoginViewModel>().onTap,
                child: const Text("Tıkla"))
          ],
        ),
      ),
    );
  }
}

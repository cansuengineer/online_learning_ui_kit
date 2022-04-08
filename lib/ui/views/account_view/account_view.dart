import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/views/account_view/account_viewmodel.dart';
import 'package:provider/provider.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AccountViewModel(),
      builder: (context, _) {
        return const _ContextView();
      },
    );
  }
}

class _ContextView extends StatelessWidget {
  const _ContextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_learning_ui_kit/ui/bottom_bar_view/bottom_bar_viewmodel.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatelessWidget {
  const BottomBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomBarViewModel(),
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
    return Container();
  }
}
